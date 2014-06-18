
# This is the user-interface definition of a Shiny web application.
# You can find out more about building applications with Shiny here:
# 
# http://www.rstudio.com/shiny/
#

library(shiny)

shinyUI(fluidPage(
  
  # Application title
  titlePanel("Chicken Weights for different Diets"),
  
  # Sidebar with a slider input for number of observations
  fluidRow(
    column(6, h4("Select Age and Weight spans for chickens on different diets and compare how the different diets affect weight gain over time in a bubble plot."))
    ),
  fluidRow(column(3, numericInput("minage", "Minimum Age",0,0,21)),
    column(3, numericInput("maxage", "Maximum Age",21,0,21))
    ),
  fluidRow(column(3, numericInput("minweight", "Minimum Weight",0,0,300)),
    column(3, numericInput("maxweight", "Maximum Weight",300,0,300))
  ),
  
  
  fluidRow(column(6, h4("See results of selected ages and weights in comparison for all four different diets the chickens were put on."))
    ),
  fluidRow(column(5, h3(textOutput("selectedAge"))),
           column(5, h3("Data summary"))
    ),
  fluidRow(column(5, plotOutput("agePlot")),
           column(5, tableOutput("summaryTable"))
    )
    
  
))
