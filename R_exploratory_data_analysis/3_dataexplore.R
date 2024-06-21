library(dplyr)

# Using special data exploration libaries in R (DataExplorer, explore, smartEDA, GGally )


install.packages("DataExplore")
library(DataExplore)

##data distribution
covid_data %>% introduce()

#covid_data %>% plot_intro()

## Missing Values ----

#covid_data %>% plot_missing()

#covid_data %>% profile_missing()

## Continuous Features ----

#covid_data %>% plot_density()

#covid_data %>% plot_histogram()

## Categorical Features ----

#covid_data %>% plot_bar()

## Relationships ----

#covid_data %>% plot_correlation(maxcat = 15)