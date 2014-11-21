
# This is the server logic for a Shiny web application.
# You can find out more about building applications with Shiny here:
# 
# http://www.rstudio.com/shiny/
#

library(shiny)

load("model.RData")

shinyServer(function(input, output) {
  
  
  output$Specie <- renderPrint(
    {
      data <- data.frame(Sepal.Length=input$sepalLength,Sepal.Width=input$sepalWidth,Petal.Length=input$petalLength,Petal.Width=input$petalWidth)
      specie <- predict(model,data)
      toString(specie)
      }
    )
  
  output$inputData <- renderPrint(
    {
      data.frame(Sepal.Length=input$sepalLength,Sepal.Width=input$sepalWidth,Petal.Length=input$petalLength,Petal.Width=input$petalWidth)
    }
  )
  
})
