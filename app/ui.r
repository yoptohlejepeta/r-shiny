library(shiny)
source("server.r")

ui <- fluidPage(
  theme = "pico.css",
  h1("Shiny test", align = "center", style = "font-size: 5em; padding: 0.5em;"),
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