shinyUI(
  pageWithSidebar(
    #Calculator for auto loan monthly payment amount 
    headerPanel("Auto Loan Monthly Payment"),
    sidebarPanel(
      h3('Description'),
      h4('This application was built to allow for the calculaiton of a monthly auto loan payment given 
                         input of the loan amount, interest rate, and term in months.')
      ),
    mainPanel(
      numericInput('principal', 'Principal Amount (USD)', 10000, step = 500),
      numericInput('interest', 'Interest Rate (ex. 4.0)', 4.0, step = 0.1),
      numericInput('months', 'Months', 60),
      submitButton('Submit'),      
      h3('Monthly Payment'),
      h4('You entered principal, rate and term of: '),
      verbatimTextOutput("loan_terms"),
      h4('Your payment will be: '),
      verbatimTextOutput("pmt")
      )
    )
  )