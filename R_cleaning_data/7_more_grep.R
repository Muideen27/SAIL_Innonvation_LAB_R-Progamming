# More on grep()

# Read a CSV file containing ambulance data from Nigeria into a data frame
ambulances <- read.csv("C:/Users/Open User/Desktop/Muideen_SAIL/nigeria_ambulances.csv")

# Find and return the actual values in the 'state_name' column that contain the string "Lagos"
grep("Lagos", ambulances$state_name, value=TRUE)

# Find the indices of rows where the 'state_name' column contains the string "Abia"
grep("Abia", ambulances$state_name)

# Count the number of rows where the 'state_name' column contains the string "Abia"
length(grep("Abia", ambulances$state_name))
