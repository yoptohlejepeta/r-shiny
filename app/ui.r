library(shiny)
source("server.r")

ui <- fluidPage(
  theme = "pico.css",
  h1("Shiny test", align = "center"),
  sidebarLayout(
    sidebarPanel(
      sliderInput("bins",
                  "Number of bins:",
                  min = 1,
                  max = 50,
                  value = 30)
    ),
    mainPanel(
      plotOutput("distPlot")
    )
  )
)