# Univariate Analysis Stage 

library(dplyr)
# Data preparation_stage
## read in our data in any format ... read.csv(), read_csv(), read_excel(), fromJSON()

covid_data <- read.csv("C:/Users/Open User/Desktop/Muideen_SAIL/covid19_nigeria_states.csv")

## obtain summary statistics ... mean(), median(), and quantile()

summary(covid_data)

## visually represent the distribution of the variable/data ... bar plots, histograms, boxplots

library(ggplot2)
set.seed(234)
##  Create a Q-Q plot for total_death variable
ggplot(covid_data, aes(sample = total_death)) +
  stat_qq() 


library(ggplot2)
set.seed(234)
glimpse(iris, 20)
iris$Species
# Create a Q-Q plot for the Sepal.Length variable
ggplot(iris, aes(sample = Sepal.Length)) +
  stat_qq() #
geom_abline(intercept = 0, slope = 1)

# Interpretation


# Interpretation


# The Q-Q plot of the Sepal.Length variable shows that the distribution is approximately normally distributed.

# The points on the Q-Q plot fall close to the line, which indicates that the distribution of the variable is similar to the normal distribution.

# We observed few points that fall not on the line, (i.e., these values are slightly lower than what would be expected under a normal distribution).

# This could be due to a number of factors (measurement error or outliers).

#Overall, the Q-Q plot suggests that the Sepal.Length variable is approximately normally distributed.