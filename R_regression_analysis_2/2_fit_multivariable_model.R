# Load the necessary library
library(ggplot2)

# Fit a linear model with mpg as the response variable, and wt and cyl as the predictor variables
model <- lm(mpg ~ wt + cyl, data = mtcars)

# Create a ggplot object to visualize the residuals vs. fitted values
ggplot(data.frame(model$residuals), aes(x = model$fitted.values, y = model$residuals)) +
  geom_point() +  # Add points for each observation
  geom_hline(yintercept = 0) +  # Add a horizontal line at y = 0
  labs(title = "Residual Plot", x = "Fitted Values", y = "Residuals")  # Add titles and labels

