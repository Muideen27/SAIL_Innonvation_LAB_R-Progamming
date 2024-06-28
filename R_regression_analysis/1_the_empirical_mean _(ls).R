# Load the necessary libraries
library(ggplot2)
library(UsingR)  # Assuming UsingR library is needed to access 'galton' dataset

# Plot a histogram of child heights with ggplot
ggplot(galton, aes(x = child)) + 
  # Add histogram bars with a binwidth of 1, colored light blue
  geom_histogram(binwidth = 1, colour = "lightblue", fill = "lightblue") +
  # Add a vertical line at the mean of child heights, colored blue with a line width of 5
  geom_vline(xintercept = mean(galton$child), colour = "blue", lwd = 5)
