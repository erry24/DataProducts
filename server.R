shinyServer(
  function(input, output) {
    output$table <- renderDataTable({iris},options = list(lengthMenu = c(5, 30, 50), pageLength = 5))
    output$freqIris <- renderPlot({
      hist(iris[,input$iris], main="Histogram of Iris Attributes", xlab=input$iris)
    })
   output$densIris <- renderPlot({
      species <- subset(iris, Species==input$iris1)
      x <- input$iris2
      plot(density(species[,x]),main=paste("Density Plot of ",input$iris1, input$iris2 ))
   })  
})