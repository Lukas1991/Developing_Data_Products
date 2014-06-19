library(shiny)
library(rmarkdown)
library(markdown)
shinyUI(pageWithSidebar(
  headerPanel("The T distribution calculator makes it easy to compute T scores 
               based on cumulative probabilities!"),
  sidebarPanel(
    h4("For how to use the calculator,please follow the instructions below."),
    h4("1.Enter a value for degrees of freedom."),
    h4("2.Enter the Cumulative probability: P(T < t)"),
    h4("3.Click the Calculate button to compute a value for the T score"),
    h5("If you have problems with the Student's t distribution, go to"), 
    a("http://en.wikipedia.org/wiki/Student%27s_t-distribution"), 
    h5("for more information. By Kannhaku^_^"),
    textInput(inputId="text1", label = "Degrees of freedom"),
    textInput(inputId="text2", label = "Cumulative probability: P(T < t)"),
    submitButton("Calculate!")
  ),
  mainPanel(
    h3('T score is'),
    textOutput("text3")
  )
))