# Replace multiple strings at a time

library(stringr)
library(dpl)

# Read a CSV file containing ambulance data from Nigeria into a data frame
ambulances <- read.csv("C:/Users/Open User/Desktop/Muideen_SAIL/nigeria_ambulances.csv")

head(ambulances, 36)

# Define a named vector for replacement where each state is associated with its region
rep_str = c('Abia'='South East','Anambra'='South East','Taraba'='North East')

# Use str_replace_all to replace state names with their respective regions in the 'state_name' column
ambulances$state_name <- str_replace_all(ambulances$state_name, rep_str)

# Display the modified data frame with replaced state names
ambulances
