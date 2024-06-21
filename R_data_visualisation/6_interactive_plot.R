# Load necessary libraries
library(ggplot2)
library(dplyr)
library(plotly)  # Load the plotly package for ggplotly

# Get the unique values from the 'states' column in the 'covid_data' data frame
oruko <- unique(covid_data$states)

# Filter the 'covid_data' data frame to include only rows where 'states' is in the 11th to 20th unique states
covid_data2 <- covid_data %>% 
  filter(states %in% oruko[11:20])

# Debug: Print the filtered data to check its content
print(head(covid_data2))
print(str(covid_data2))

# Check for NA values in key columns
print(sum(is.na(covid_data2$total_death)))
print(sum(is.na(covid_data2$total_confirmed)))

# Create a basic plot to ensure the data is being plotted
basic_plot <- ggplot(covid_data2, aes(x = total_death, y = total_confirmed)) +
  geom_point()

# Print the basic plot
print(basic_plot)

# Create a ggplot object with additional features
foma <- ggplot(covid_data2, aes(total_death, total_confirmed)) +
  geom_point(aes(color = states), size = 4, alpha = 1/2) +
  theme_bw(base_family = "Times") +
  geom_smooth(size = 1, linetype = 3, method = "lm", se = FALSE) +
  labs(title = "Selected States Covid Death & Cases") + 
  labs(x = "Number of Deaths", y = "Total Confirmed Cases")

# Convert the ggplot object to an interactive plotly object and assign to vide2
vide2 <- ggplotly(foma)

# Print the interactive plot to the RStudio Viewer
print(vide2)

# Save the interactive plot as an HTML file
htmlwidgets::saveWidget(vide2, "covid_plot.html")
