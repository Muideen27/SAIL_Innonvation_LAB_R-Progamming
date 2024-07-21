# Load necessary libraries
if (!require(shiny)) install.packages("shiny", repos = "https://cloud.r-project.org/")
if (!require(ggplot2)) install.packages("ggplot2", repos = "https://cloud.r-project.org/")
if (!require(plotly)) install.packages("plotly", repos = "https://cloud.r-project.org/")
if (!require(dplyr)) install.packages("dplyr", repos = "https://cloud.r-project.org/")
if (!require(DBI)) install.packages("DBI", repos = "https://cloud.r-project.org/")
if (!require(RPostgres)) install.packages("RPostgres", repos = "https://cloud.r-project.org/")
if (!require(janitor)) install.packages("janitor", repos = "https://cloud.r-project.org/")

library(shiny)
library(ggplot2)
library(plotly)
library(dplyr)
library(DBI)
library(RPostgres)
library(janitor)

# Define UI for application
ui <- fluidPage(
  titlePanel("Nigeria's Economic Growth"),
  sidebarLayout(
    sidebarPanel(
      selectInput("plot", "Choose a plot to display:",
                  choices = list("President Year Count" = "years",
                                 "Inflation Rate" = "inflation",
                                 "Unemployment Rate" = "unemployment",
                                 "Industrial Sector Growth" = "sectorial",
                                 "Correlation between Inflation and Unemployment" = "correlation"))
    ),
    mainPanel(
      plotlyOutput("plotOutput")
    )
  )
)

# Define server logic
server <- function(input, output) {
  
  # Connect to the PostgreSQL database
  con <- dbConnect(RPostgres::Postgres(), 
                   dbname = 'nigeriaeconomy',
                   host = 'localhost',
                   port = 5432,
                   user = 'sail',
                   password = '1234')
  
  # Load the data from PostgreSQL
  economy_data <- dbReadTable(con, 'economy_data')
  
  # Clean the column names
  clean_economy_data <- clean_names(economy_data)
  
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
  
  # Disconnect from the database when the server stops
  onStop(function() {
    dbDisconnect(con)
  })
}

# Run the application 
shinyApp(ui = ui, server = server)
