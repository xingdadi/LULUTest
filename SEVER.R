library(lattice)
shinyServer(function(input, output) {

  output$main_plot <- renderPlot({

histogram( ~ height | voice.part, data = singer, nint = 17,
          endpoints = c(59.5, 76.5), layout = c(2,4), aspect = 1,
          xlab = "Height (inches)")

  })
})