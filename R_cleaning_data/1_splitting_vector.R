# Splitting character vectors

# Good for automatically spliting variables names 

# Read the CSV file containiing amblulance data from Nigeria into a data frame
ambulanceData <- read.csv("C:/Users/Open User/Desktop/Muideen_SAIL/nigeria_ambulances.csv")

# Split the Elements of a Character Vector 
splitNames = strsplit(names(ambulanceData), "\\_")

splitNames[[5]]
splitNames[[6]]
