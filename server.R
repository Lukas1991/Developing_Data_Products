library(shiny)
library(rmarkdown)
library(markdown)
library(stats)
shinyServer(
  function(input, output) {
     output$text3 <- renderText(qt(as.numeric(input$text2),as.numeric(input$text1)))
  }
)