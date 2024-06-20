# Finding values

# Read a CSV file containing ambulance data from Nigeria into a data frame
ambulances <- read.csv("C:/Users/Open User/Desktop/Muideen_SAIL/nigeria_ambulances.csv")

# Find the indices of rows where the 'state_name' column contains the string "Lagos"
grep("Lagos", ambulances$state_name)

# Create a table of logical values indicating the presence of "Lagos" in the 'state_name' column
table(grepl("Lagos", ambulances$state_name))

# Create a new data frame 'ambulances2' that excludes rows where the 'state_name' column contains "Lagos"
ambulances2 <- ambulances[!grepl("Lagos", ambulances$state_name), ]

# Display the new data frame 'ambulances2'
ambulances2
