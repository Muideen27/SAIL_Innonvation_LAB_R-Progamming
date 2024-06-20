# String substitution

# Define a string with underscores
maria <- "so_long_a_letter"

# Replace the first underscore in the string with an empty string
sub("_", "", maria)

# Replace all underscores in the string with empty strings
gsub("_", "", maria)


# Application Note
# This code snippet demonstrates how to use sub and gsub functions in R for pattern replacement within strings. 
# These functions are very useful for data cleaning and preprocessing tasks where you need to standardize or sanitize text data.