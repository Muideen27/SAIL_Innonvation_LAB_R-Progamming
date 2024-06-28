# Load the UsingR library for accessing Galton's dataset
library(UsingR)

# Load ggplot2 for plotting (not used in this specific code, but often necessary for plotting)
library(ggplot2)

# Set up a 1x2 plotting layout
par(mfrow=c(1,2))

# Plot histogram for child heights in Galton's dataset
hist(galton$child, breaks=100, col="lightblue", border="pink", main="Child Heights", xlab="Height")

# Plot histogram for parent heights in Galton's dataset
hist(galton$parent, breaks=100, col="lightblue", border="pink", main="Parent Heights", xlab="Height")
