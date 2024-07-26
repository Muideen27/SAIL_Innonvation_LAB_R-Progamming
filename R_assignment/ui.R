install.packages("shiny")
install.packages("ggplot2")
install.packages("dplyr")

installed.packages("shiny")
library(shiny)
library(ggplot2)

ui <- fluidPage(
  titlePanel("Nigeria's Economic Growth"),
  sidebarLayout(
    sidebarPanel(
      selectInput("plot", "Choose a plot to display:",
                  choices = list("President Year Count" = "years",
                                 "Inflation Rate" = "inflation",
                                 "Unemployment Rate" = "unemployment",
                                 "Sectorial Contributions to GDP" = "sectorial",
                                 "Correlation between Inflation and Unemployment" = "correlation"))
    ),
    mainPanel(
      plotlyOutput("plotOutput")
    )
  )
)

