# Load the necessary library
library(datasets)

# Fit a linear model with mpg as the response variable, and wt and cyl as the predictor variables
model <- lm(mpg ~ wt + cyl + carb, data = mtcars)

# Display the summary of the fitted model
summary(model)

# If we want to fit the model without an intercept, we can use -1 in the formula
model_no_intercept <- lm(mpg ~ wt + cyl - 1, data = mtcars)

# Display the summary of the model without the intercept
summary(model_no_intercept)
