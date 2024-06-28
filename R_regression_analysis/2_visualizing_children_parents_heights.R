# Load the necessary libraries
library(ggplot2)
library(UsingR)  # Assuming UsingR library is needed to access 'galton' dataset

# Plot a scatter plot of parent heights against child heights with ggplot
ggplot(galton, aes(parent, child)) +
  # Add points for each data pair
  geom_point() +
  # Add a linear regression line with confidence intervals turned off
  geom_smooth(method = "lm", se = FALSE)
