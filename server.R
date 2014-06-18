
# This is the server logic for a Shiny web application.
# You can find out more about building applications with Shiny here:
# 
# http://www.rstudio.com/shiny/
#

library(shiny)
library(lattice)
library(ggplot2)
library(datasets)
library(plyr)


shinyServer(function(input, output) {
  data(ChickWeight)
  gc <- (ChickWeight)
  
  gc_data <- reactive({
    a <-subset(gc, ChickWeight$Time >= input$minage & ChickWeight$Time <= input$maxage & ChickWeight$weight >= input$minweight & ChickWeight$weight <= input$maxweight)
    return(a)
  })
  
  output$agePlot <- renderPlot({
    gc_done <- ddply(gc_data(), c("Diet", "Time"), summarise, N = length(Chick))
    plot <- reactive({
      b <- ggplot(gc_done, aes(x=Diet, y=Time, size=N, label="Number of chickens"), guide=FALSE)+
      geom_point(colour="white", fill="red", shape=21)+
      scale_size_area("Number of chickens", max_size=15)+
      scale_x_discrete(name="Chicken Diet")+
      scale_y_continuous(name="Chicken Age")+
      geom_text(label="", size=6)+
      theme_bw()
      return(b)
      })
    print(plot())
  })
  
  output$selectedAge <- renderText({paste("You selected chicken ages from ", input$minage, " to ", input$maxage, " days and 
                                          chicken weights from ", input$minweight, " to ", input$maxweight, ".")})
  
  output$summaryTable <- renderTable({
    gc_done <- gc_data()
    summary(subset(gc_done, select=c("weight", "Time")))
  })
  
  
})
