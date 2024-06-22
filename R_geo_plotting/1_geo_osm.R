#Author: Muideen Ilori
#api_key <- Sys.getenv("STADIAMAP_API_KEY")
#print(api_key)

library(sf)
library(mapview)
library(leaflet)
library(tidyverse)
library(tidygeocoder)

uba_branches <- read.csv("C:\\Users\\Open User\\OneDrive\\Desktop\\Muideen_SAIL\\uba_branches.csv")
names(uba_branches)
head(uba_branches)
str(uba_branches)

uba_branches
geo_code_tbl <- uba_branches %>%
  geocode(address = Address, method = "osm")

head(geo_code_tbl)

tidygeocoder::geocode(
  address = Address,
  method = "osm"
)
