# Load the necessary library (assuming dplyr is already loaded for dataset manipulation)
library(dplyr)

# Assuming 'churning' dataset is already loaded and 'Churn' column exists

# Create a binary churn variable (0 for "No", 1 for "Yes")
churning$churn <- ifelse(churning$Churn == "No", 0, 1)

# Fit a logistic regression model to predict churn based on tenure
logRegChurn <- glm(churning$churn ~ churning$tenure, family = "binomial")

# Plot tenure against the fitted probabilities of churning
plot(churning$tenure, logRegChurn$fitted, pch = 19, col = "blue", xlab = "Tenure", ylab = "Prob of churning")

