# Load the necessary library
library(datasets)

# Fit a linear model with mpg as the response variable, and wt and cyl as the predictor variables
model <- lm(mpg ~ wt + cyl, data = mtcars)

# Display the intercept of the model
model$coefficients[1]

# If we want to fit the model without an intercept, we can use -1 in the formula
model_no_intercept <- lm(mpg ~ wt + cyl - 1, data = mtcars)

# Display the coefficients of the model without the intercept
model_no_intercept$coefficients

