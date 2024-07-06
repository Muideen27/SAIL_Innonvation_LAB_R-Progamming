# Load necessary library
library(dplyr)


# Define the vectors for each region
North_Central <- c("Benue", "Kogi", "Kwara", "Nasarawa", "Niger", "Plateau", "FCT")
North_Eastern <- c("Adamawa", "Bauchi", "Borno", "Gombe", "Taraba", "Yobe")
North_Western <- c("Jigawa", "Kaduna", "Kano", "Katsina", "Kebbi", "Sokoto", "Zamfara")
South_Eastern <- c("Abia", "Anambra", "Ebonyi", "Enugu", "Imo")
South_South <- c("Akwa Ibom", "Bayelsa", "Cross River", "Delta", "Edo", "Rivers")
South_Western <- c("Ekiti", "Lagos", "Ogun", "Ondo", "Osun", "Oyo")

# Create a named vector for state to region mapping
state_region_mapping <- c(
  setNames(rep("North-Central", length(North_Central)), North_Central),
  setNames(rep("North-Eastern", length(North_Eastern)), North_Eastern),
  setNames(rep("North-Western", length(North_Western)), North_Western),
  setNames(rep("South-South", length(South_South)), South_South),
  setNames(rep("South-Western", length(South_Western)), South_Western)
)

# View the updated dataset
head(covid_data)
names(covid_data)
view(covid_data)
str(covid_data)

# Use mutate to add the new region column
covid_data <- covid_data %>%
  mutate(region = state_region_mapping[states])

# Perform ANOVA test to compare the average number of deaths across regions
anova_result <- aov(total_death ~ region, data = covid_data)

# Display the summary of the ANOVA result
summary(anova_result)


# Perform Tukey HSD post-hoc test
tukey_result <- TukeyHSD(anova_result)

# Display the summary of the Tukey HSD test
print(tukey_result)

# Create the bar plot
ggplot(covid_data, aes(x = region, y = total_death, fill = region)) +
  geom_col() +
  labs(title = "Total Deaths Across the Regions", x = "Region", y = "Total Deaths") +
  theme_minimal() +
  theme(
    plot.title = element_text(hjust = 0.5, size = 16, face = "bold"),
    axis.text.x = element_text(angle = 45, hjust = 1)
  ) +
  scale_fill_brewer(palette = "Set3")

