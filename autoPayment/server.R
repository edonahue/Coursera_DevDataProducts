monthPayment <- function(p, r, m) {
  r <- r/100
  payment <- (p*(r/12))/(1-(1+r/12)^-m)
  return(round(payment,2))
}

shinyServer(
  function(input, output) {
    output$prin <- renderPrint({input$principal})
    output$int <- renderPrint({input$interest})
    output$term <- renderPrint({input$months})
    output$loan_terms <- renderPrint({paste(input$principal, input$interest, input$months, sep = ", ")})
    output$pmt <- renderPrint({monthPayment(input$principal, input$interest, input$months)})
  }
)