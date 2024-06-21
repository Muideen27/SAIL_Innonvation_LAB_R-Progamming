#covid_data %>% explore() ## if you run: This function can only be used in an interactive R session

#covid_data %>% select(-states) %>% explore() ## if you run: This function can only be used in an interactive R session

## Describe ----

#covid_data %>% describe_all()

#covid_data %>% describe_cat(states)

## Explore All Variables ----

# covid_data %>%
#   explore_all(
#     target = total_death,
#     ncol   = 3
#   )

## Explore Bivariate Plot ----
# covid_data %>%
#   explore(
#     target = total_death,
#     var    = total_death,
#     var2   = states
#   )