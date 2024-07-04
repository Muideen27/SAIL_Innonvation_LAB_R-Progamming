# Load necessary libraries
library(dplyr)
library(sf)
library(mapview)
library(leaflet)
library(readxl)
library(janitor)
library(tidygeocoder)

health_center_data <- read_excel("C:\\Users\\Open User\\Downloads\\health centre locations.xlsx")

head(health_center_data)
glimpse(health_center_data)
names(health_center_data)
health_center_data_cleaned <- clean_names(health_center_data)
names(health_center_data_cleaned)

health_center_data_cleaned
geo_code_tbl <- health_center_data_cleaned %>%
geocode(address = lga, 
          method = "osm")
View(geo_code_tbl)

# Convert the dataframe to a spatial dataframe (sf object)
geo_code_tbl_filtered <- geo_code_tbl %>%
  filter(!is.na(lat) & !is.na(long))

health_center_data_cleaned_sf <- geo_code_tbl_filtered%>%
  st_as_sf(
    coords = c("lat", "long"), # Use the correct column names for coordinates
    crs = 4326 # Coordinate reference system, EPSG:4326 for WGS84
  )
mapview(health_center_data_cleaned_sf)



# Add the leaflet map with various tile layers and markers
leaflet(health_center_data_cleaned_sf) %>%
  addProviderTiles(providers$OpenStreetMap.Mapnik, group = "OpenStreetMap") %>%
  addProviderTiles(providers$Esri.WorldImagery, group = "World Imagery") %>%
  addLayersControl(baseGroups = c("OpenStreetMap", "World Imagery")) %>%
  addMarkers(
    data = health_center_data_cleaned_sf, # Pass the spatial data
    label = ~facility_name, # Use market_settlement_name for the label
    clusterOptions = markerClusterOptions(),
    popup = ~ifelse(!is.na(lga),  # Use OBJECTID for the popup condition
                    as.character(lga),  # Use OBJECTID for the popup value
                    "Not sure of the market's location")
  )