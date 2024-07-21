# Load necessary libraries
library(shiny)
library(plotly)

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
