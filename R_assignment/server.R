# Load necessary libraries
if (!require(shiny)) install.packages("shiny", repos = "https://cloud.r-project.org/")
if (!require(ggplot2)) install.packages("ggplot2", repos = "https://cloud.r-project.org/")
if (!require(plotly)) install.packages("plotly", repos = "https://cloud.r-project.org/")
if (!require(dplyr)) install.packages("dplyr", repos = "https://cloud.r-project.org/")
if (!require(readxl)) install.packages("readxl", repos = "https://cloud.r-project.org/")
if (!require(janitor)) install.packages("janitor", repos = "https://cloud.r-project.org/")

library(shiny)
library(ggplot2)
library(plotly)
library(dplyr)
library(readxl)
library(janitor)

# Load the Dataset from local machine
economy_data <- read_excel("C:\\Users\\Open User\\Downloads\\Nigeria_Economy.xlsx")

# Clean the column names
clean_economy_data <- clean_names(economy_data)

# Define server logic
server <- function(input, output) {
  # Data preprocessing for year count
  clean_economy_data2 <- clean_economy_data %>%
    group_by(president) %>%
    summarise(year_count = n())
  
  output$plotOutput <- renderPlotly({
    if (input$plot == "years") {
      p <- ggplot(clean_economy_data2, aes(president, year_count, fill = president)) +
        geom_col() +
        theme_minimal() +
        labs(title = "President's Year Count from 1990-2023", x = "President", y = "Year Count")
      ggplotly(p)
    } else if (input$plot == "inflation") {
      p <- ggplot(clean_economy_data, aes(president, inflation_rate, fill = president)) +
        geom_col() +
        theme_minimal() +
        labs(title = "Inflation Rate by President", x = "President", y = "Inflation Rate")
      ggplotly(p)
    } else if (input$plot == "unemployment") {
      p <- ggplot(clean_economy_data, aes(president, unemployment, fill = president)) +
        geom_col() +
        theme_minimal() +
        labs(title = "Unemployment Rate by President", x = "President", y = "Unemployment Rate")
      ggplotly(p)
    } else if (input$plot == "sectorial") {
      p <- ggplot(clean_economy_data, aes(president, industry, fill = president)) +
        geom_col() +
        theme_minimal() +
        labs(title = "Industrial Growth by President", x = "President", y = "Industry")
      ggplotly(p)
    } else if (input$plot == "correlation") {
      p <- ggplot(clean_economy_data, aes(x = inflation_rate, y = unemployment)) +
        geom_point() +
        theme_minimal() +
        labs(title = "Correlation between Inflation Rate and Unemployment", x = "Inflation Rate", y = "Unemployment")
      ggplotly(p)
    }
  })
}

# Run the application 
shinyApp(ui = ui, server = server)
