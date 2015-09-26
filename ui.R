library(shiny)
shinyUI(
  pageWithSidebar(
    headerPanel("Child's Height Prediction"),
    sidebarPanel(
      h3("Parents' Height"),
      numericInput("height_F", "Father's Height (Inches)", value = 60, min = 50, max = 90, step = 1),
      numericInput("height_M", "Mother's Height (Inches)", value = 60, min = 50, max = 90, step = 1),
      submitButton('Submit')
          ),
    mainPanel(
      h3('Predicted Height'),
      h4("You entered Father's Height"),
      verbatimTextOutput("inputValue1"),
      h4("You entered Mother's Height"),
      verbatimTextOutput("inputValue2"),
      h4("Child's Height Prediction"),
      verbatimTextOutput("prediction")
    )
  )
)

