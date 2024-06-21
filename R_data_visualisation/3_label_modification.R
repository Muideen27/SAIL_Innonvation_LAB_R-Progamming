#Labels Modification


covid_data2 <- covid_data %>% 
  subset(states %in% oruko[11:20])

g <- ggplot(covid_data2, aes(total_death, total_confirmed))

g + geom_point(aes(color = states), size = 4, alpha = 1/2) + 
  labs(title = "Selected Stated Covid Death & Cases") + 
  labs(x = expression("Number of Death"), y = "Total Confirmed Cases")
