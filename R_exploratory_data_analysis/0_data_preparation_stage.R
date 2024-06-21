library(dplyr)
# Data preparation_stage
## read in our data in any format ... read.csv(), read_csv(), read_excel(), fromJSON()

covid_data <- read.csv("C:/Users/Open User/Desktop/Muideen_SAIL/covid19_nigeria_states.csv")

head(covid_data)
names(covid_data)
glimpse(covid_data)
## Inspect the data ... head(), names(), glimpse()
str(covid_data)

## Select and group the data (if necessary) ... filter(), subset()
covid_data %>% 
  subset(states == "Lagos") %>% 
  group_by(states, month) %>% 
  summarize(count = n()) %>% 
  as.data.frame()

