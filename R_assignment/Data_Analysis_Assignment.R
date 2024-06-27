#NIGERIA_ECONOMY_GROWTH_ANALYSIS_FROM_1960-2023 ASINGMENT
#load the required libraries
library(tidyverse)
library(explore)
library(readxl)
library(janitor)
library(DataExplorer)
library(plotly)
library(psych)
library(readxl)

#load the Dataset
economy_data <- read_excel("/home/muideen/Downloads/R_files/Nigeria_Economy.xlsx")

economy_data

#Inspecting the data showing the first six rows
head(economy_data)

#further inspection by showing the glimpse
glimpse(economy_data)

#SHowing the column headers
names(economy_data)

#cleaning the column headers
clean_economy_data <-  clean_names(economy_data)
clean_economy_data

#Checking the cleaned names
names(clean_economy_data)
#checking the data dimension
dim(clean_economy_data)
#Checking the datatypes
str(clean_economy_data)
#data summary statistics
summary(clean_economy_data)

##Describing both the quantitative and categorical columns
clean_economy_data %>% describe_all()

clean_economy_data %>% describe_cat(president)


#indroducing the data columns
clean_economy_data %>% introduce()

#plotting the intro
clean_economy_data %>% plot_intro()

## Checking for Missing Values ----

clean_economy_data %>% plot_missing()

## Continuous Features ----

clean_economy_data %>% plot_density()

clean_economy_data %>% plot_histogram()

## Categorical Features ----

clean_economy_data %>% plot_bar()

## Relationships with maximum categories
clean_economy_data %>% plot_correlation(maxcat = 5)
clean_economy_data %>% plot_correlation(maxcat = 7)

#
#Giving all the names of the state without duplicate
president_names <- unique(clean_economy_data$president)
president_names 
#filtering through the president's column to get names of presidents that are like the president's names
clean_economy_data2 <- clean_economy_data %>% 
  subset(president %in% president_names)
clean_economy_data2

#Using qplot to compare the inflation and unemployent rate of each gorvernment 
qplot(inflation_rate, unemployment, data = clean_economy_data2, facets = . ~ president, 
      geom = c("point", "smooth"))

#creating a scatter plot to see the correlation between unemployent and inflation rate
# Create the scatter plot
ggplot(clean_economy_data, aes(x = inflation_rate, y = unemployment)) +
  geom_point() +
  theme_minimal() +
  labs(title = "Correlation between Inflation Rate and Unemployment", 
       x = "Inflation Rate", 
       y = "Unemployment")




# comparing various inflation rate of all the presidents
library(ggplot2)

# Create the bar plot without x-axis labels
inflation <- ggplot(clean_economy_data, aes(x = president, y = inflation_rate, fill = president)) +
  geom_col() +
  labs(title = "Inflation Rate by President") + 
  labs(x = NULL, y = "Inflation Rate") +  # Remove x-axis label
  theme(axis.text.x = element_blank(),  # Remove x-axis text
        axis.ticks.x = element_blank())  # Remove x-axis ticks

# Display the plot
ggplotly(inflation)

 
#comparing various unemployment rate of all the presidents
 unemployent_rate <- ggplot(clean_economy_data, aes(president,unemployment,fill = president))+
   geom_col() +
   labs(title = "") + 
   labs(x = "President", y = "unemployent Rate") 
 unemployent_rate
 
 names(clean_economy_data2)

 #comparing various gorvernment_dept of all the presidents
 government_debt_rate <- ggplot(clean_economy_data, aes(president,government_debt,fill = president))+
   geom_col() +
   labs(title = "Government dept of all the presiden") + 
   labs(x = "President", y = "government_debt") 
 government_debt_rate
 
 
 #comparing various industrial_sector of all the presidents
 industrial_sector <- ggplot(clean_economy_data, aes(president,industry,fill = president))+
   geom_col() +
   labs(title = "Industrial growth of all the Presidents") + 
   labs(x = "President", y = "Industry") 
 industrial_sector
 
 
 #comparing various gdp_at_2010_constant_basic_prices of all the presidents against gdp_at_2010_constant_market_prices
 Gdp <- ggplot(clean_economy_data, aes(gdp_at_2010_constant_market_prices,gdp_at_2010_constant_basic_prices))+
   geom_point() +
   facet_wrap(~ president)+
   labs(title = "gdp_at_2010_constant_basic_prices") + 
   labs(x = "gdp_at_2010_constant_market_prices", y = "gdp_at_2010_constant_basic_prices") 
 Gdp
 
 
 

 
 # Reshape data from wide to long format for plotting
 long_sector_data <-  clean_economy_data %>%
   gather(key = "sector", value = "GDP_Contribution", agriculture, industry, services)
 
 # Plot the area chart
 ggplot(long_sector_data, aes(x = year, y = GDP_Contribution, fill = sector)) +
   geom_area(position = "stack") +
   theme_minimal() +
   labs(title = "Sectoral Contributions to GDP Over Time", x = "Year", y = "GDP Contribution") +
   theme(legend.position = "top") +
   scale_fill_brewer(palette = "Set3")
 
 # Calculate the sum of contributions for each sector
 sector_sums <- clean_economy_data %>%
   summarize(
     total_agriculture = sum(agriculture, na.rm = TRUE),
     total_industry = sum(industry, na.rm = TRUE),
     total_services = sum(services, na.rm = TRUE)
   )
 
 # Print the sum of contributions for each sector
 print(sector_sums)
 
#  During the period from 1990 to 2023, Nigeria's economy witnessed significant shifts in the contributions of different sectors to its Gross Domestic Product (GDP). Let's delve into the sectorial contributions to GDP over this period, highlighting key trends and notable developments.
#  
#  From 1990 to 1995, the Agriculture sector made a modest contribution to GDP, hovering below 5000 units. Meanwhile, the Industry sector maintained a steady contribution in the range of 15000 units, indicating its stable presence in the economy. On the other hand, the Services sector emerged as a dominant force, with contributions exceeding 22000 units, reflecting its pivotal role in driving economic growth and development.
#  
#  Moving into the late 1990s and early 2000s, we observed some interesting dynamics in sectorial contributions. While Agriculture experienced a slight uptick in its contribution, remaining below 5000 units, the Industry sector began showing signs of growth, particularly towards the end of the decade. By the late 1990s, Industry's contribution reached around 15000 units, signaling its potential for expansion. Meanwhile, the Services sector maintained a substantial contribution, hovering close to 18000 units, indicating its resilience and importance in driving economic activities.
# 
# The period from 2000 to 2005 marked a significant turning point in Nigeria's economic landscape. Agriculture, Industry, and Services sectors all experienced notable changes in their contributions to GDP. Agriculture witnessed a gradual increase in its contribution, reaching its peak in the mid-2000s, albeit remaining below 5000 units. Industry's contribution continued to rise steadily, surpassing 15000 units and showing promising growth prospects. However, it was the Services sector that stole the spotlight, experiencing a remarkable surge in its contribution, skyrocketing to unprecedented levels exceeding 22000 units. This surge underscored the pivotal role of the Services sector in driving Nigeria's economic growth and transformation.
#  
#  As we approach the year 2023, under the administration of Buhari, there was a notable downturn in the performance of all sectors, reflecting a challenging economic environment. The Services sector, which had been a powerhouse of economic activity, experienced a significant decline in its contribution, plummeting from over 70000 units in 2022 to below 15000 units in 2023. This sharp decrease highlighted the vulnerability of the Services sector to economic shocks and policy changes.
#  
#  Similarly, the Industry sector witnessed a substantial decline in its contribution, falling from a range of 26000 units in 2022 to a range of 6000 units in 2023. This decline underscored the challenges faced by the industrial sector, including issues related to infrastructure, regulatory environment, and market demand.
#  
#  Furthermore, the Agriculture sector, which had shown some resilience in previous years, also experienced a downturn in its contribution. From contributing around 14000 units in 2022, the Agriculture sector's contribution dropped to 5000 units in 2023. This decline could be attributed to various factors, including adverse weather conditions, inadequate investment, and supply chain disruptions.
# 
# Summary
# In summary, the year 2023 witnessed a significant contraction in the performance of all sectors of Nigeria's economy. The sharp decline in contributions from the Services, Industry, and Agriculture sectors underscored the challenges and vulnerabilities facing the Nigerian economy, requiring strategic interventions and policy reforms to foster sustainable growth and development.
#  
#  
 
 
 