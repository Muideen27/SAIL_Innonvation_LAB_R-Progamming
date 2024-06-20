# Substituting character vectors

# Read a CSV file containing ambulance data from Nigeria into a data frame
ambulances <- read.csv("C:/Users/Open User/Desktop/Muideen_SAIL/nigeria_ambulances.csv")

# Display the first 4 rows of the data frame to get an overview of the data
head(ambulances, 4)

# Retrieve and print the column names of the data frame
names(ambulances)

# Remove underscores from the column names and print the modified names
sub("_", "", names(ambulances))


# Application Note
# This code snippet demonstrates a common preprocessing task where you read data, 
# inspect a sample of it, and clean up column names.