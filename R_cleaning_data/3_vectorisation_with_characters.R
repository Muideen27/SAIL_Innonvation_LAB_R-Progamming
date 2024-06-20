# Vectorisation with characters

# Read a CSV file containing ambulance data from Nigeria into a data frame
ambulancesData <- read.csv("./data/nigeria_ambulances.csv")

# Split the column names of the data frame at the underscore character
splitNames <- strsplit(names(ambulancesData), "\\_")

# Access the first part of the sixth column name (split at the underscore)
splitNames[[6]][1]

# Define a function that returns the first element of a vector
firstElement <- function(x) {
  x[1]
}

# Apply the firstElement function to each element in the splitNames list
# This extracts the first part of each split column name
sapply(splitNames, firstElement)
