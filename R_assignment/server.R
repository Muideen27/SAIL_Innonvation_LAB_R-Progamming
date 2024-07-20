library(shiny)
library(ggplot2)
library(png)
library(grid)

server <- function(input, output) {
  
  tenure <- data.frame(
    president = c("Abdulsalami Abubakar", "Goodluck Jonathan", "Ibrahim Babangida",
                  "Muhammadu Buhari", "Musa Yar'Adua", "Olusegun Obasanjo", "Sani Abacha"),
    Year_Count = c(1, 5, 4, 8, 3, 8, 5)
  )
  
  output$plotOutput <- renderPlot({
    if (input$plot == "years") {
      ggplot(tenure, aes(president, Year_Count, fill = president)) +
        geom_col() +
        theme_minimal() +
        labs(title = "President's Year Count from 1990-2023", x = "President", y = "Year Count")
    } else if (input$plot == "inflation") {
      img <- readPNG("inflation.png")
      grid::grid.raster(img)
    } else if (input$plot == "unemployment") {
      img <- readPNG("Unemployment.png")
      grid::grid.raster(img)
    } else if (input$plot == "sectorial") {
      img <- readPNG("Sectorial.png")
      grid::grid.raster(img)
    } else if (input$plot == "correlation") {
      img <- readPNG("image.png")
      grid::grid.raster(img)
    }
  })
  
  output$textOutput <- renderText({
    if (input$plot == "years") {
      "The tenure analysis shows that Muhammadu Buhari and Olusegun Obasanjo each served the longest terms of 8 years, while Abdulsalami Abubakar served the shortest term of 1 year."
    } else if (input$plot == "inflation") {
      "The inflation rate comparison reveals that Sani Abacha's regime experienced the highest inflation rates, while Abdulsalami Abubakar's tenure had the lowest inflation rates."
    } else if (input$plot == "unemployment") {
      "The unemployment rate comparison indicates that Muhammadu Buhari's tenure had the highest unemployment rates, with Abdulsalami Abubakar experiencing the lowest rates."
    } else if (input$plot == "sectorial") {
      "Sectorial contributions to GDP over time show that the services sector has been the largest contributor, followed by industry and agriculture. There is a notable decline in 2023 across all sectors."
    } else if (input$plot == "correlation") {
      "The scatter plot shows a negative correlation between inflation rate and unemployment rate, suggesting that higher inflation rates might be associated with lower unemployment rates."
    }
  })
}

shinyApp(ui = ui, server = server)
