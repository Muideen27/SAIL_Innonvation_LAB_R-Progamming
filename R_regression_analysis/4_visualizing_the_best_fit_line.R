# Import necessary library
library(dplyr)

# Convert the Galton data into a frequency table
freq_galton <- as.data.frame(table(galton$child, galton$parent))

# Rename columns for clarity
names(freq_galton) <- c("child", "parent", "freq")

# Plot the data
plot(as.numeric(as.vector(freq_galton$parent)), 
     as.numeric(as.vector(freq_galton$child)),
     pch = 21, col = "black", bg = "lightblue",
     cex = .05 * freq_galton$freq, 
     xlab = "Parents", ylab = "Children")

# Fit a linear model
lm1 <- lm(galton$child ~ galton$parent)

# Add the regression line to the plot
lines(galton$parent, lm1$fitted, col = "red", lwd = 3)
