# Load necessary libraries
library(dplyr)

# install necessary library
install.packages("sf")
install.packages("mapview")
install.packages("leaflet")

library(sf)
library(mapview)
library(leaflet)

# Read CSV file containing Nigerian markets data
nigerian_markets <- read.csv("C:/Users/Open User/OneDrive/Desktop/Muideen_SAIL/nigeria_markets.csv")

# Display the first few rows of the dataset to check its structure
head(nigerian_markets)

# Display the names of the columns in the dataset
names(nigerian_markets)

# Convert the dataframe to a spatial dataframe (sf object)
nigerian_markets_sf <- nigerian_markets %>%
  st_as_sf(
    coords = c("longitude", "latitude"), # Use the correct column names for coordinates
    crs = 4326 # Coordinate reference system, EPSG:4326 for WGS84
  )

# Check the structure of the spatial dataframe
str(nigerian_markets_sf)

# Print a few rows to check the spatial dataframe
print(nigerian_markets_sf)

# Visualize the spatial dataframe on a map to ensure it's correctly transformed
mapview(nigerian_markets_sf)

# Add the leaflet map with various tile layers and markers
leaflet(nigerian_markets_sf) %>%
  addProviderTiles(providers$MtbMap) %>%
  addProviderTiles(providers$Esri.WorldImagery, group = "World Imagery") %>%
  addProviderTiles(providers$Stamen.TonerLite, group = "Toner Lite") %>%
  addLayersControl(baseGroups = c("Toner Lite", "World Imagery")) %>%
  addMarkers(
    label = ~market_name, # Use market_name for the label
    clusterOptions = markerClusterOptions(),
    popup = ~ifelse(!is.na(OBJECTID),  # Use OBJECTID for the popup condition
                    as.character(OBJECTID),  # Use OBJECTID for the popup value
                    "Not sure of the market's location")
  )
