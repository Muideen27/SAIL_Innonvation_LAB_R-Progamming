# Vectorisation with characters

# Read a CSV file containing ambulance data from Nigeria into a data frame
ambulancesData <- read.csv("C:/Users/Open User/Desktop/Muideen_SAIL/nigeria_ambulances.csv")

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

# Application Note
# This code snippet can be particularly useful in data cleaning and preprocessing, 
# especially when dealing with column names that follow a specific naming convention. 
# By splitting and analyzing parts of the column names, you can:
  
# - Standardize Naming Conventions: Ensure that column names follow a consistent pattern, which is essential for readability and maintainability of the code.
# - Feature Engineering: Extract meaningful features from complex column names that can be used in further analysis or modeling.
# - Data Documentation: Improve documentation by providing clear and concise descriptions of what each part of a column name represents.