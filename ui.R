shinyUI(pageWithSidebar(
  headerPanel("Iris Data Explorer"),
  sidebarPanel(
    h4('Explore the Iris Data Set'),
    h5("Search through the data set"),
    h5("Plot a histogram of Iris Attributes"),
    h5("Compare density plots for Iris Species and Attributes"),
    selectInput("iris", "Iris Attributes Histogram:", c(names(iris)[1:4])),
    selectInput("iris1", "Iris Species Density:", c( "setosa", "versicolor", "virginica")),
    selectInput("iris2", "Iris Attributes Density:", c(names(iris)[1:4]))
  ),
  mainPanel(
    dataTableOutput('table'),
    plotOutput('freqIris'),
    plotOutput('densIris')
  )
))
