# Multivariate Analysis Stage:
  

## explore relationships between variables ... cor()

#covid_data

## We can use scatterplots and boxplots
str(covid_data)

par(mfrow = c(2, 1), mar = c(4, 4, 2, 1))
hist(subset(covid_data, states == "Ogun")$total_death, col = "green")
hist(subset(covid_data, states == "Oyo")$total_death, col = "green")