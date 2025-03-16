# Function to calculate the probability of a defective product
calculate_defective_probability <- function() {
  # Prompt the user to enter production rates for each factory
  cat("Enter production rates for each factory (between 10%/0.1 and 40%/0.4):\n")
  production_rates <- numeric(3)
  for (i in 1:3) {
    production_rates[i] <- as.numeric(readline(paste("Factory", i, ": ")))
    if (production_rates[i] < 0.10 || production_rates[i] > 0.40) {
      stop("Production rates must be between 10%/0.1 and 40%/0.4.")
    }
  }

  # Prompt the user to enter defective rates for each product
  cat("Enter defective rates for each product (between 1%/0.01 and 5%/0.05):\n")
  defective_rates <- numeric(3)
  for (i in 1:3) {
    defective_rates[i] <- as.numeric(readline(paste("Product", i, ": ")))
    if (defective_rates[i] < 0.01 || defective_rates[i] > 0.05) {
      stop("Defective rates must be between 1%/0.01 and 5%/0.05.")
    }
  }

  # Check if the sum of all production rates equals 1
  if (sum(production_rates) != 1) {
    stop("The sum of all production rates must equal 1 (representing 100% of production).")
  }

  # Check if the sum of all defective rates is approximately 0.12
  if (abs(sum(defective_rates) - 0.12) >= 0.0001) {
    stop("The sum of all defective rates must be approximately 12/0.12.")
  }

  # Calculate the total probability of a defective product
  total_probability <- sum(production_rates * defective_rates)
  return(paste("The probability that a random product is defective is:", total_probability))
}

# Call the function to get user input and calculate the probability
calculate_defective_probability()



