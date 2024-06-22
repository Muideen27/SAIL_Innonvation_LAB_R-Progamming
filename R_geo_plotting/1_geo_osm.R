#Author: Muideen Ilori
#api_key <- Sys.getenv("STADIAMAP_API_KEY")
#print(api_key)

library(sf)
library(mapview)
library(leaflet)
library(tidyverse)
library(tidygeocoder)
library(sf)
library(mapview)
library(leaflet)

uba_branches <- read.csv("C:\\Users\\Open User\\OneDrive\\Desktop\\Muideen_SAIL\\uba_branches.csv")
names(uba_branches)
head(uba_branches)
str(uba_branches)

uba_branches
geo_code_tbl <- uba_branches %>%
  geocode(address = Address, method = "osm")

head(geo_code_tbl)

view(geo_code_tbl)


# Filter out rows with missing coordinates
geo_code_tbl_filtered <- geo_code_tbl %>%
  filter(!is.na(lat) & !is.na(long))

#Checking the head of filtered coordinates
head(geo_code_tbl_filtered)

#Viewing the entire filtered coordinates 
view(geo_code_tbl_filtered)

# Assuming geo_code_tbl_filtered is already defined and contains filtered data

# Convert the filtered data to an sf object
geo_code_sf <- geo_code_tbl_filtered %>%
  st_as_sf(coords = c("long", "lat"), crs = 4326)

# Display the first few rows of the filtered sf object
head(geo_code_sf)

# Visualize the data on a map using mapview
mapview(geo_code_sf)


# Add the leaflet map with various tile layers and markers
leaflet(geo_code_sf) %>%
  addProviderTiles(providers$OpenStreetMap.Mapnik, group = "OpenStreetMap") %>%
  addProviderTiles(providers$Esri.WorldImagery, group = "World Imagery") %>%
  addLayersControl(baseGroups = c("OpenStreetMap", "World Imagery")) %>%
  addMarkers(
    data = geo_code_sf, # Pass the spatial data
    label = ~geo_code_sf$Address, # Address for the label
    clusterOptions = markerClusterOptions(),
    popup = ~ifelse(!is.na(geo_code_sf$Branches),  # Use Branches for the popup condition
                    as.character(geo_code_sf$Branches),  # Use Branches for the popup value
                    "Not sure of the market's location")
  )
