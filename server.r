library(UsingR)
data(galton)
lmgalton <- lm(galton$child~., data = galton)
heightpredict <- function(height_F,height_M) 
  predict(lmgalton, data.frame(parent=(height_F+(1.08*height_M))/2), interval = "predict")
shinyServer(
  function(input, output) {
    output$inputValue1 <- renderPrint({input$height_F})
    output$inputValue2 <- renderPrint({input$height_M})
    output$prediction <- renderPrint({heightpredict(input$height_F,input$height_M)})
  }
)  