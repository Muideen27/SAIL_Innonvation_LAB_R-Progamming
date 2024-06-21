library(ggplot2)

#covid_data 

oruko <- unique(covid_data$states)

covid_data2 <- covid_data %>% 
  subset(states %in% oruko[11:20])

qplot(total_death, total_confirmed, data = covid_data2, facets = . ~ states, 
      geom = c("point", "smooth"))

# qplot(total_death, total_confirmed, data = covid_data2, facets = . ~ states, 
#       geom = c("point", "smooth"), method = "lm")