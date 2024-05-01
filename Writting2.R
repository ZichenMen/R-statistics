# Set CRAN mirror for package installation
options(repos = c(CRAN = "https://cran.rstudio.com"))

# Install necessary packages if not already installed
if (!require(combinat)) install.packages("combinat")
if (!require(MASS)) install.packages("MASS")

# Load the libraries
library(combinat)
library(MASS)

# Rolling a 12-sided dice
# Expected value for a uniform distribution from 1 to 12
dice_expected_value <- mean(1:12)
print(paste("Expected value for rolling a 12-sided dice:", dice_expected_value))

# Hypergeometric distribution
# The distribution of graduate degree holders in a city
graduate_hypergeometric <- qhyper(0.95, 7000, 93000, 500)
print("Probabilities for graduate degree holders in a sample of 500 people:")
print(graduate_hypergeometric)

# Negative binomial distribution
# Median number of clickless viewers before the ad gets 100 clicks
median_clickless_viewers <- qnbinom(0.5, 100, 0.15, lower.tail=FALSE)
print(paste("Median number of clickless viewers before 100 clicks:", median_clickless_viewers))

# Binomial distribution
# Probability of exactly 10 tornadoes out of 90 thunderstorms
tornado_probability <- dbinom(10, 90, 0.05)
print(paste("Probability of exactly 10 tornadoes in 90 thunderstorms:", tornado_probability))

# Poisson distribution
# Probability of seeing 3 or fewer labors in the next 4 hours
labor_probability <- ppois(3, 40, lower.tail=TRUE)
print(paste("Probability of 3 or fewer labors in 4 hours:", labor_probability))

# Geometric distribution
# Probability of posting 100 TikToks before one goes viral
viral_tiktok_probability <- pgeom(100, 0.003, lower.tail=FALSE)
print(paste("Probability of posting 100 TikToks before one goes viral:", viral_tiktok_probability))
