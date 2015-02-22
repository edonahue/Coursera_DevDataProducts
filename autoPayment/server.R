monthPayment <- function(principal, interest, months) {
  interest <- interest/100
  payment <- (principal*(interest/12))/(1-(1+interest/12)^-months)
  return(payment)
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