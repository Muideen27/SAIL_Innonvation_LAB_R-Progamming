# String Replace

# Read a CSV file containing ambulance data from Nigeria into a data frame
ambulances <- read.csv("C:/Users/Open User/Desktop/Muideen_SAIL/nigeria_ambulances.csv")

# Using dplyr pipe operator (%>%) and stringr's str_replace function to replace "Lagos" with "Oduduwa" in the 'state_name' column
ambulances2 <- ambulances %>% 
  mutate(state_name = str_replace(state_name, "Lagos", "Oduduwa"))

# Display the modified data frame with replaced values
ambulances2
