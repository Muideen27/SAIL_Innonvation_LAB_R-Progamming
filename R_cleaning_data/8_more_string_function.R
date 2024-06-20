# More useful string functions


# Load the stringr package for string manipulation functions
library(stringr)

# Define a string containing a name
sa <- "Senator Adetokunbo"

# Calculate the number of characters in the string 'sa'
nchar(sa)

# Extract a substring from 'sa', starting at position 8 and ending at position 18
sa_b4 <- substr(sa, 8, 18)

# Display the extracted substring
sa_b4

# Concatenate the string "HRM" with the extracted substring
sa_ft <- paste("HRM", sa_b4)

# Display the concatenated result
sa_ft

