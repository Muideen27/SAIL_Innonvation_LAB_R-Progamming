oruko <- unique(covid_data$states)

covid_data2 <- covid_data %>% 
  subset(states %in% oruko[11:20])

g <- ggplot(covid_data2, aes(total_death, total_confirmed))

#summary(g)

g

## Layer (point)

g + geom_point()

## Let's add more layers (smooth)
g + geom_point() + geom_smooth()

g + geom_point() + geom_smooth(method = "lm")

g + geom_point() + facet_grid(. ~ states) + geom_smooth(method = "lm") 
