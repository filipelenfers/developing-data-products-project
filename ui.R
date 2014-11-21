
# This is the user-interface definition of a Shiny web application.
# You can find out more about building applications with Shiny here:
# 
# http://www.rstudio.com/shiny/
#

library(shiny)

shinyUI(fluidPage(
  
  # Application title
  titlePanel("Classifier for iris species"),
  
  # Sliders to get data
  sidebarLayout(
  sidebarPanel(
    h3("Input data:"),
    p("Input the data that will te used to classify the iris. All the data are in centimetres."),
    sliderInput("sepalLength",
                "Sepal Length:",
                min = 4.3,
                max = 7.9,
                value = 5.8,
                step = 0.1),
    
    sliderInput("sepalWidth",
                "Sepal Width:",
                min = 2.0,
                max = 4.4,
                value = 3.1,
                step = 0.1),
    
    sliderInput("petalLength",
                "Petal Length:",
                min = 1.0,
                max = 6.9,
                value = 3.76,
                step = 0.1),
    
    sliderInput("petalWidth",
                "Petal Width:",
                min = 0.1,
                max = 2.5,
                value = 1.2,
                step = 0.1)
  ),
  
  # Result
  mainPanel(
    h3("Classification"),
    verbatimTextOutput("Specie"),
    p("The iris can be classified in 3 different species: setosa,versicolor and virginica."),
    hr(),
    h4("Input used:"),
    verbatimTextOutput("inputData"),
    p("The data that have been inputed.")
  )
  
  ),
  
  fluidRow(
    br(),
    h3("Observations"),
    br(),
    h4("How to use this application"),
    p("Use the slides to change the input data, when a slide value changes the classification is automatically updated. You can check the values used by the classifier in the right painel under the label \"Input used\", this data should be the same defined on the sliders."),
    hr(),
    h4("Classifer"),
    p("This classifier was built using the iris dataset (http://en.wikipedia.org/wiki/Iris_flower_data_set), and the Random Forest algorithm in caret package. The model was saved and loaded into this application to be used in the classfication."),
    hr(),
    h4("Inputs"),
    p("All the inputs are in centimetres. They are limited on the max and min of each feature in the iris dataset.")
    
  )
  
  
  
))
