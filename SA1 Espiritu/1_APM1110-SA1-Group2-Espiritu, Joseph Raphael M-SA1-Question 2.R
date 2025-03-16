# Define UI
ui <- fluidPage(
  titlePanel("Discrete Random Variable Analysis"),

  tabsetPanel(
    tabPanel("Univariate",
             sidebarLayout(
               sidebarPanel(
                 textInput("values", "Values (comma-separated)", placeholder = "e.g., 1,2,3"),
                 textInput("probabilitiesU", "Probabilities (comma-separated)", placeholder = "e.g., 0.2,0.5,0.3"),
                 actionButton("calculateU", "Calculate"),
                 hr(),
                 textOutput("mean"),
                 textOutput("variance"),
                 hr(),
                 checkboxGroupInput("plotOptions1", "Plots to Display:",
                                    choices = list("Probability Density Function (PDF)" = "pdf",
                                                   "Cumulative Distribution Function (CDF)" = "cdf"),
                                    selected = c("pdf", "cdf"))
               ),
               mainPanel(
                 plotOutput("plot1"),
                 plotOutput("plot2")
               )
             )
    ),

    tabPanel("Bivariate",
             sidebarLayout(
               sidebarPanel(
                 textInput("values_x", "Values for X (comma-separated)", placeholder = "e.g., 1,2,3"),
                 textInput("values_y", "Values for Y (comma-separated)", placeholder = "e.g., 1,2,3"),
                 textAreaInput("probabilities", "Probabilities (row X/column Y, comma-separated)",
                               placeholder = "e.g., 0.1,0.2,0.3\n0.2,0.3,0.4\n0.1,0.3,0.1"),
                 actionButton("calculateB", "Calculate"),
                 hr(),
                 textOutput("marginal_x"),
                 textOutput("marginal_y"),
                 textOutput("conditional_x"),
                 textOutput("conditional_y"),
                 hr(),
                 checkboxGroupInput("plotOptions2", "Plots to Display:",
                                    choices = list("PDF for Marginal Distribution of X" = "pdf_marginal",
                                                   "CDF for Marginal Distribution of X" = "cdf_marginal",
                                                   "PDF for Conditional Distribution of Y given X" = "pdf_conditional",
                                                   "CDF for Conditional Distribution of Y given X" = "cdf_conditional"),
                                    selected = c("pdf_marginal", "cdf_marginal", "pdf_conditional", "cdf_conditional"))
               ),
               mainPanel(
                 plotOutput("pdf_plot"),
                 plotOutput("cdf_plot")
               )
             )
    )
  )
)

# Define server logic
server <- function(input, output) {

  #UniVariate
  observeEvent(input$calculateU, {
    values <- as.numeric(unlist(strsplit(input$values, ",")))
    probabilitiesU <- as.numeric(unlist(strsplit(input$probabilitiesU, ",")))

    # Check if values and probabilities are numeric
    if (any(is.na(values)) || any(is.na(probabilitiesU))) {
      output$mean <- renderText("Invalid input. Please enter numeric values.")
      output$variance <- renderText("")
      return()
    }

    # Check if values and probabilities have the same length
    if (length(values) != length(probabilitiesU)) {
      output$mean <- renderText("Values and probabilities must have the same length.")
      output$variance <- renderText("")
      return()
    }

    if (sum(probabilitiesU) != 1 || any(probabilitiesU < 0) || any(probabilitiesU > 1)) {
      output$mean <- renderText("Invalid probabilities. Probabilities must sum to 1 and be in the interval [0, 1].")
      output$variance <- renderText("")
    } else {
      mean_val <- sum(values * probabilitiesU)
      variance_val <- sum(probabilitiesU * (values - mean_val)^2)

      output$mean <- renderText(paste("Mean:", mean_val))
      output$variance <- renderText(paste("Variance:", variance_val))

      output$plot1 <- renderPlot({
        if ("pdf" %in% input$plotOptions1) {
          df <- data.frame(x = values, y = probabilitiesU)
          ggplot(df, aes(x, y)) + geom_point() + geom_line() +
            labs(x = "Values", y = "Probability", title = "Probability Density Function (PDF)")
        } else {
          NULL
        }
      })

      output$plot2 <- renderPlot({
        if ("cdf" %in% input$plotOptions1) {
          cum_probs <- cumsum(probabilitiesU)
          df <- data.frame(x = values, y = cum_probs)
          ggplot(df, aes(x, y)) + geom_point() + geom_step(direction = "hv") +
            labs(x = "Values", y = "Cumulative Probability", title = "Cumulative Distribution Function (CDF)")
        } else {
          NULL
        }
      })
    }
  })

  # BiVariate
  observeEvent(input$calculateB, {
    values_x <- as.numeric(unlist(strsplit(input$values_x, ",")))
    values_y <- as.numeric(unlist(strsplit(input$values_y, ",")))
    probabilities <- as.matrix(read.csv(text = input$probabilities, header = FALSE, sep = ",", stringsAsFactors = FALSE))

    # Check if probabilities are valid
    if (!all(rowSums(probabilities) == 1) || !all(colSums(probabilities) == 1) || any(probabilities < 0) || any(probabilities > 1)) {
      output$marginal_x <- renderText("Invalid probabilities. Probabilities must sum to 1 and be in the interval [0, 1].")
      output$marginal_y <- renderText("")
      output$conditional_x <- renderText("")
      output$conditional_y <- renderText("")
      output$pdf_plot <- renderPlot(NULL)  # Clear PDF plot
      output$cdf_plot <- renderPlot(NULL)  # Clear CDF plot
      return()
    }

    # Check if the length of values_x, values_y, and probabilities are consistent
    if (length(values_x) != nrow(probabilities) || length(values_y) != ncol(probabilities)) {
      output$marginal_x <- renderText("Lengths of values and probabilities must match.")
      output$marginal_y <- renderText("")
      output$conditional_x <- renderText("")
      output$conditional_y <- renderText("")
      output$pdf_plot <- renderPlot(NULL)  # Clear PDF plot
      output$cdf_plot <- renderPlot(NULL)  # Clear CDF plot
      return()
    }

    # Calculate marginal distribution for X and Y
    marginal_x <- colSums(probabilities)
    marginal_y <- rowSums(probabilities)

    # Calculate conditional distribution for Y given X
    conditional_y_given_x <- lapply(seq_along(values_x), function(i) {
      prob <- probabilities[i, ] / sum(probabilities[i, ])  # Normalize probabilities for each value of X
      prob
    })

    # Calculate mean and variance for marginal distributions
    marginal_mean_x <- sum(values_x * marginal_x)
    marginal_variance_x <- sum((values_x - marginal_mean_x)^2 * marginal_x)
    marginal_mean_y <- sum(values_y * marginal_y)
    marginal_variance_y <- sum((values_y - marginal_mean_y)^2 * marginal_y)

    output$marginal_x <- renderText(paste("Marginal Mean (X):", marginal_mean_x, "\nMarginal Variance (X):", marginal_variance_x))
    output$marginal_y <- renderText(paste("Marginal Mean (Y):", marginal_mean_y, "\nMarginal Variance (Y):", marginal_variance_y))

    # Calculate mean and variance for conditional distributions
    conditional_means <- lapply(conditional_y_given_x, function(p) sum(values_y * p))
    conditional_variances <- lapply(conditional_y_given_x, function(p) sum((values_y - conditional_means[[1]])^2 * p))

    output$conditional_x <- renderText({
      conditional_x_text <- paste("Conditional Mean (Y|X):", paste(unlist(conditional_means), collapse = ", "))
      conditional_x_text
    })

    output$conditional_y <- renderText({
      conditional_y_text <- paste("Conditional Variance (Y|X):", paste(unlist(conditional_variances), collapse = ", "))
      conditional_y_text
    })

    # Plotting
    output$pdf_plot <- renderPlot({
      p <- ggplot()  # Initialize p as an empty ggplot object
      if ("pdf_marginal" %in% input$plotOptions2) {
        df_x <- data.frame(x = values_x, y = marginal_x)
        df_y <- data.frame(x = values_y, y = marginal_y)
        p <- p + geom_point(data = df_x, aes(x, y), color = "blue") + geom_line(data = df_x, aes(x, y), color = "blue", linetype = "dashed") +
          geom_point(data = df_y, aes(x, y), color = "red") + geom_line(data = df_y, aes(x, y), color = "red", linetype = "dashed") +
          labs(x = "Values for X", y = "Probability", title = "PDF for Marginal Distribution of X")
      }
      if ("cdf_marginal" %in% input$plotOptions2) {
        cum_probs_x <- cumsum(marginal_x)
        cum_probs_y <- cumsum(marginal_y)
        df_x <- data.frame(x = values_x, y = cum_probs_x)
        df_y <- data.frame(x = values_y, y = cum_probs_y)
        p <- p + geom_point(data = df_x, aes(x, y), color = "blue") + geom_step(data = df_x, aes(x, y), color = "blue") +
          geom_point(data = df_y, aes(x, y), color = "red") + geom_step(data = df_y, aes(x, y), color = "red") +
          labs(title = "CDF for Marginal Distribution of X")
      }
      p
    })

    output$cdf_plot <- renderPlot({
      p <- ggplot()  # Initialize p as an empty ggplot object
      if ("pdf_conditional" %in% input$plotOptions2) {
        for (i in 1:length(conditional_y_given_x)) {
          df_conditional <- data.frame(x = values_y, y = conditional_y_given_x[[i]])
          p <- p + geom_point(data = df_conditional, aes(x, y), color = rainbow(length(conditional_y_given_x))[i]) +
            geom_line(data = df_conditional, aes(x, y), color = rainbow(length(conditional_y_given_x))[i], linetype = "dashed")
        }
        p <- p + labs(x = "Values for Y", y = "Probability", title = "PDF for Conditional Distribution of Y given X")
      }
      if ("cdf_conditional" %in% input$plotOptions2) {
        for (i in 1:length(conditional_y_given_x)) {
          cum_probs <- cumsum(conditional_y_given_x[[i]])
          df_conditional <- data.frame(x = values_y, y = cum_probs)
          p <- p + geom_point(data = df_conditional, aes(x, y), color = rainbow(length(conditional_y_given_x))[i]) +
            geom_step(data = df_conditional, aes(x, y), color = rainbow(length(conditional_y_given_x))[i])
        }
        p <- p + labs(title = "CDF for Conditional Distribution of Y given X")
      }
      p
    })
  })
}

# Run the application
shinyApp(ui = ui, server = server)
