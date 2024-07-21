# Load necessary libraries
install.packages("sf")
install.packages("mapview")
install.packages("leaflet")

library(dplyr)        # For data manipulation
library(sf)           # For handling spatial data
library(mapview)      # For interactive maps
library(leaflet)      # For creating maps with multiple layers and markers
library(readxl)       # For reading Excel files
library(janitor)      # For cleaning data frames
library(tidygeocoder) # For geocoding addresses

# Load health center data from an Excel file
health_center_data <- read_excel("/home/muideen/Downloads/health_centre_locations.xlsx")

# View the first few rows of the dataset
head(health_center_data)

# Get a glimpse of the dataset structure
glimpse(health_center_data)

# Get the column names of the dataset
names(health_center_data)

# Clean the column names of the dataset
health_center_data_cleaned <- clean_names(health_center_data)

# View the cleaned column names
names(health_center_data_cleaned)

# View the cleaned dataset
health_center_data_cleaned

# Geocode the addresses (LGA) using the OpenStreetMap (OSM) method
geo_code_tbl <- health_center_data_cleaned %>%
  geocode(address = lga, method = "osm")

# View the geocoded data
View(geo_code_tbl)

# Filter out rows with missing latitude and longitude values
geo_code_tbl_filtered <- geo_code_tbl %>%
  filter(!is.na(lat) & !is.na(long))

# Convert the filtered dataframe to a spatial dataframe (sf object)
health_center_data_cleaned_sf <- geo_code_tbl_filtered %>%
  st_as_sf(
    coords = c("lat", "long"), # Use the correct column names for coordinates
    crs = 4326 # Coordinate reference system, EPSG:4326 for WGS84
  )

# Display the spatial data on an interactive map
mapview(health_center_data_cleaned_sf)
View(health_center_data_cleaned_sf)

# Add the leaflet map with various tile layers and markers
leaflet(health_center_data_cleaned_sf) %>%
  addProviderTiles(providers$OpenStreetMap.Mapnik, group = "OpenStreetMap") %>%
  addProviderTiles(providers$Esri.WorldImagery, group = "World Imagery") %>%
  addLayersControl(baseGroups = c("OpenStreetMap", "World Imagery")) %>%
  addMarkers(
    data = health_center_data_cleaned_sf, # Pass the spatial data
    label = ~facility_name, # Use facility_name for the label
    clusterOptions = markerClusterOptions(), # Cluster the markers
    popup = ~ifelse(!is.na(lga),  # Use lga for the popup condition
                    as.character(lga),  # Use lga for the popup value
                    "Not sure of the market's location") # Default popup text
  )
edit()