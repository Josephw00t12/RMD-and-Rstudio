# Set the parameters
num_simulations <- 10000
p <- 0.6  # Probability that any site contains the key phrase

# Function to simulate search
simulate_search <- function(p) {
  searches <- 0
  success <- FALSE
  while (!success) {
    searches <- searches + 1
    if (runif(1) <= p) {
      success <- TRUE
    }
  }
  return(searches)
}

# Simulate searches
search_results <- replicate(num_simulations, simulate_search(p))

# Plot the simulated pdf
hist(search_results, breaks = 30, prob = TRUE, main = "Simulated PDF of Searches", xlab = "Number of Searches")
lines(density(search_results), col = "red")

# Calculate mean and variance of search results
mean_searches <- mean(search_results)
var_searches <- var(search_results)
cat("Mean number of searches:", mean_searches, "\n")
cat("Variance of number of searches:", var_searches, "\n")

# Simulated conditional distribution of searches when three searches have been carried out without success
failed_searches <- search_results[search_results > 3]
conditional_mean <- mean(failed_searches)
conditional_var <- var(failed_searches)
cat("Mean number of searches after 3 unsuccessful searches:", conditional_mean, "\n")
cat("Variance of number of searches after 3 unsuccessful searches:", conditional_var, "\n")

# Markov memoryless property estimates
# A. P(X=4|X>3) and P(X=1)
p_X4_given_Xgt3 <- sum(search_results == 4) / sum(search_results > 3)
p_X1 <- sum(search_results == 1) / num_simulations
cat("P(X=4|X>3):", p_X4_given_Xgt3, "\n")
cat("P(X=1):", p_X1, "\n")

# B. P(X=5|X>3) and P(X=2)
p_X5_given_Xgt3 <- sum(search_results == 5) / sum(search_results > 3)
p_X2 <- sum(search_results == 2) / num_simulations
cat("P(X=5|X>3):", p_X5_given_Xgt3, "\n")
cat("P(X=2):", p_X2, "\n")
