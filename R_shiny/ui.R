library(shiny)
shinyUI(pageWithSidebar(
  headerPanel("Data science SAIL!"),
  
  sidebarPanel(
    h3('Sidebar text')
  ),
  mainPanel(
    h3('Main Panel text')
  )
))

# R functions for HTML markup
shinyUI(pageWithSidebar(
  headerPanel("Illustrating markup"),
  sidebarPanel(
    h1('Sidebar panel'),
    h1('H1 text'),
    h2('H2 Text'),
    h3('H3 Text'),
    h4('H4 Text')
    
  ),
  mainPanel(
    h3('Main Panel text'),
    code('some code'),
    p('some ordinary text')
  )
))

# Illustrating inputs ui.R

shinyUI(pageWithSidebar(
  headerPanel("Illustrating inputs"),
  sidebarPanel(
    numericInput('id1', 'Numeric input, labeled id1', 0, min = 0, max = 10, step = 1),
    checkboxGroupInput("id2", "Checkbox",
                       c("Value 1" = "1",
                         "Value 2" = "2",
                         "Value 3" = "3")),
    dateInput("date", "Date:")  
  ),
  mainPanel(
    h3('Illustrating outputs'),
    h4('You entered'),
    verbatimTextOutput("oid1"),
    h4('You entered'),
    verbatimTextOutput("oid2"),
    h4('You entered'),
    verbatimTextOutput("odate")
  )
  )
)


