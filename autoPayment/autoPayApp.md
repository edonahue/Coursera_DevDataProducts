Auto Loan Payment Calculator
========================================================
author: Erich Donahue
date: 2015-02-22
font-family: 'Georgia'

Objective
========================================================
This web application allows users to enter their desired loan terms and receive an estimated montly payment.

Inputs required are:
- Prinicipal Loan Amount
- Interest Rate
- Term, in months

Calculation
========================================================

The application uses a common mathematical formula to estimate the monthly payment of an auto loan.
The calculation is performed entirely with a principal amount, down payments are not considered.
A fixed rate during the life of the loan is assumed.

The formula I used is:

$\frac{p(r/12)}{1-(1+r/12)^{-t}}$


   
<small> More info can be found at:
http://teachertech.rice.edu/Participants/bchristo/lessons/carpaymt.html
</small>

R Code
========================================================

To provide the calculation for the application I built the following formula:

```r
monthPayment <- function(p, r, m) {
  r <- r/100
  payment <- (p*(r/12))/(1-(1+r/12)^-m)
  return(round(payment,2))
}
```
This code accepts the three numeric inputs (preferred forms of decimal, decimal, integer) and returns a rounded dollar amount.


Example Run
========================================================
As an example, let's estimate a monthly payment given the following loan terms:
- Loan Amount: 20000
- Interest Rate: 4.2%
- Term, in months: 60

Given the above terms the calculator would estimate a monthly payment of:

```r
monthPayment(20000, 4.2, 60)
```

```
[1] 370.14
```
