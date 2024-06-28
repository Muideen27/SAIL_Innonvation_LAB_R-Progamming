# Assignment on storytelling: Nigeria Economic Growth Analysis

## Problem Statement
To analyze data on Nigeria's economic growth over the past 34 years under different presidential regimes to derive insights and identify the highest indicators of economic growth, stability, and sectoral development.

## Abstract
This study delves into the economic history of Nigeria from 1990 to 2023, exploring the intricate relationships between inflation, unemployment, government debt, and sectoral contributions under various presidential regimes. Using a comprehensive dataset obtained from Kaggle, we carefully analyzed economic indicators such as inflation rates, unemployment rates, government debt, and the contributions of agriculture, industry, and services to the GDP. Our methodology encompassed data cleaning, exploratory data analysis (EDA), correlation analysis, and comparative analysis across presidential eras, employing statistical techniques and visual storytelling tools like ggplot2 and plotly.

The analysis revealed significant variations in economic stability, as indicated by the dynamic interplay between inflation and unemployment across different presidencies. Sectoral contributions demonstrated a notable shift, with the services sector emerging as a dominant force in recent years, highlighting Nigeria's transition towards a more diversified economy. Fiscal policies and government debt levels varied significantly, reflecting different periods of fiscal expansion and consolidation. The comparison of GDP at constant basic and market prices provided a clearer view of real economic growth trajectories, free from inflationary distortions.

Our study showed a sharp decline in the contributions of all sectors to economic growth and development, particularly evident towards the year 2023 during the Buhari regime. This reflected a challenging economic environment and indicated the need for strategic interventions and policy reforms to foster sustainable growth and development.

## Introduction
The economy of Nigeria is a middle-income, mixed economy and emerging market with expanding manufacturing, financial, service, communications, technology, and entertainment sectors. It is ranked as the 39th-largest economy in the world in terms of nominal GDP, the second-largest in Africa, and the 27th-largest in terms of purchasing power parity. Nigeria has the 2nd largest economy in Africa. The country's re-emergent manufacturing sector became the largest on the continent in 2013, producing a large proportion of goods and services for the region of West Africa. Nigeria’s debt-to-GDP ratio was 36.63% in 2021 according to the IMF. Understanding the intricate interplay of inflation, unemployment, government debt, and sectoral contributions under different presidential regimes is paramount in the ever-evolving tapestry of Nigeria's economic history (Bloomberg).

The Nigeria Economy Growth dataset spans from 1990 to 2023 and comprises 11 columns, each representing a specific aspect of the Nigerian economy:
- **President**: Contains the names of presidents.
- **Year**: Represents the calendar year for the economic data.
- **Inflation Rate**: Tracks the annual percentage change in the general price level of goods and services.
- **Unemployment**: Indicates the proportion of the labor force actively seeking employment but remaining jobless.
- **Government Debt**: Contains data on Nigeria’s public debt.
- **Agriculture**: Details agricultural production.
- **Industry**: Encompasses manufacturing, mining, and other industrial activities.
- **Services**: Highlights contributions from the service sector.
- **GDP at 2010 Constant Basic Prices**: Shows GDP data at constant prices.
- **Net Taxes on Products**: Indicates the tax revenue.
- **GDP at 2010 Constant Market Prices**: Presents the market price-based GDP data.

## Methodology and Data Collection

### Data Collection
Our data collection journey began with the meticulous gathering of economic indicators spanning 34 years, covering tenures from Ibrahim Babangida to Muhammadu Buhari. The dataset was obtained from Kaggle, a reputable source for diverse and comprehensive datasets. This rich dataset encompasses a diverse array of economic parameters:
- **Inflation Rate**: Capturing the yearly fluctuations in the general price level, a critical indicator of economic stability.
- **Unemployment Rate**: Reflecting the percentage of the labor force that is unemployed and actively seeking employment, a barometer of economic health.
- **Government Debt**: Illustrating the government's financial obligations, a key factor influencing fiscal policies and economic growth.
- **Sectoral Contributions (Agriculture, Industry, Services)**: Highlighting the GDP contributions from various sectors, shedding light on the structural composition of the economy.
- **GDP at 2010 Constant Basic and Market Prices**: Offering a constant price perspective to understand real economic growth devoid of inflationary distortions.
- **Net Taxes on Products**: Providing insights into the government's revenue from taxes on goods and services.

### Methodology
With our data in hand, we embarked on an analytical journey using statistical techniques and visual storytelling. Our methodology was rooted in the following steps:
1. **Data Cleaning and Preparation**: We began by cleaning and standardizing the dataset, addressing any inconsistencies or missing values. The `janitor` package was instrumental in ensuring our data was tidy and ready for analysis.
2. **Exploratory Data Analysis (EDA)**: We conducted a thorough exploratory analysis to uncover initial insights and trends. This involved generating summary statistics, plotting histograms, and creating density plots to understand the distribution of each variable.
3. **Correlation Analysis**: To delve into the relationships between economic indicators, we employed correlation matrices and scatter plots. This step was crucial in identifying potential causal links and dependencies among variables.
4. **Comparative Analysis Across Presidential Eras**: Utilizing `ggplot2` and `plotly`, we crafted visual narratives comparing key economic indicators across different presidential regimes. This included:
   - **Inflation vs. Unemployment**: Examining the interplay between these two critical indicators under each president.
   - **Sectoral Contributions Over Time**: Creating area charts to visualize the dynamic contributions of agriculture, industry, and services to the GDP.
   - **Government Debt and Industrial Growth**: Comparing the debt levels and industrial growth across presidential eras, highlighting periods of fiscal prudence or expansion.
   - **Interactive Visualizations**: Leveraging the power of interactive plots, we transformed static charts into dynamic tools for deeper exploration. This allowed us to present a more engaging and insightful narrative of Nigeria's economic journey.
5. **Summarizing Sectoral Growth**: Calculating the total and average contributions of each sector to the GDP provided a holistic view of structural changes in the economy over the years.

## Results
The results of our analysis paint a vivid picture of Nigeria's economic evolution:
- **Inflation and Unemployment**: The scatter plots revealed significant variations in the inflation-unemployment dynamic across different presidencies. High inflation rates often coincided with economic instability, while lower rates were indicative of more stable periods.
  - ![Figure 1: Scatter plot of the correlation between unemployment and inflation rate](#)
  - ![Figure 2: Comparing various inflation rates of all the presidents - ggplot2](#)
- **Sectoral Shifts**: The area charts showcased the shifting contributions of agriculture, industry, and services. Notably, the services sector emerged as a dominant force in recent years, reflecting Nigeria's transition towards a more diversified economy.
- **Fiscal Policies and Debt**: Visual comparisons of government debt highlighted periods of fiscal expansion and consolidation. The industrial sector's growth patterns provided insights into the effectiveness of economic policies under different regimes.
- **GDP Analysis**: The comparison of GDP at constant basic and market prices underscored the real growth trajectories, free from inflationary distortions. This offered a clearer view of economic progress over time.
  - ![Figure 3: Comparing GDP of all the presidents](#)

## Conclusion
As we approach the year 2023, under the administration of Buhari, there was a notable downturn in the performance of all sectors, reflecting a challenging economic environment. The Services sector, which had been a powerhouse of economic activity, experienced a significant decline in its contribution, plummeting from over 70000 units in 2022 to below 15000 units in 2023. This sharp decrease highlighted the vulnerability of the Services sector to economic shocks and policy changes.

Similarly, the Industry sector witnessed a substantial decline in its contribution, falling from a range of 26000 units in 2022 to a range of 6000 units in 2023. This decline underscored the challenges faced by the industrial sector, including issues related to infrastructure, regulatory environment, and market demand.

Furthermore, the Agriculture sector, which had shown some resilience in previous years, also experienced a downturn in its contribution. From contributing around 14000 units in 2022, the Agriculture sector's contribution dropped to 5000 units in 2023. This decline could be attributed to various factors, including adverse weather conditions, inadequate investment, and supply chain disruptions.

Overall, the year 2023 witnessed a significant contraction in the performance of all sectors of Nigeria's economy. The sharp decline in contributions from the Services, Industry, and Agriculture sectors underscored the challenges and vulnerabilities facing the Nigerian economy, requiring strategic interventions and policy reforms to foster sustainable growth and development.

## References
- The World Bank Group. (n.d.). Nigeria Overview. Retrieved from The World Bank
- Kaggle. (n.d.). Nigeria Economy Growth Dataset. Retrieved from Kaggle
- Bloomberg. (n.d.). Insights on Nigeria's Economic History. Retrieved from Bloomberg
- International Monetary Fund. (2021). Nigeria: Selected Issues. Retrieved from IMF
- Wikipedia. (n.d.). Economy of Nigeria. Retrieved from Wikipedia
- International Monetary Fund (IMF). (2021). Nigeria’s Debt-to-GDP Ratio.
- BBC News. (2014). Nigeria becomes Africa's biggest economy. Retrieved from BBC
- OpenAI. (2024). ChatGPT [Large language model]. Retrieved from ChatGPT
- Olayemi Awofe. (1990-2003). Nigeria Analysis and Forecasting.
