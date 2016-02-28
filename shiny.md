Course Project: Shiny Application and Reproducible Pitch
========================================================
author: Mohamad Raziff Ramli
date: 26/2/2016

Overview Shiny Application
========================================================

This is the final presentation for the Course Project of the "Developing data products" course. The project consists in two activities:

1. Create a Shiny application
2. Create a presentation in Slidify or Rstudio Presenter to pitch for the application.

The app developed for the first part of the assignment demo is available at: https://razifframli.shinyapps.io/realApp/

Source code for ui.R and server.R files are available on the GitHub repo: https://github.com/razifframli/DataProducts_ShinyApps

Shiny Application Functionality
========================================================

Use this car payment calculator to estimate monthly payments, total payment and total interest paid. Simply enter the loan amount, loan term, sale tax and interest rate to calculate your monthly auto loan payments. This calculator will help you determine how much car you can afford.

```r
LoanCar<-10000
Interest<-6
Term<-60
InterestRate<-(Interest/100)/12
MonthlyLoanPayment<-(((InterestRate/100)/12)*LoanCar)/(1-(1/(((InterestRate/100)/12)+1)^Term))
round(MonthlyLoanPayment,2)
```

```
[1] 166.69
```

How it Works
========================================================

server.R

Once the Button "Calculate" been click, the server automatically calculate the input value from the value is automatically updated by the changes in user input.Once a change is detected, the value at main panel automatic change.

ui.R

This apps been devide into two panel: sidebarPanel and mainPanel. SidebarPanel display textboxwas  used for getting user value and actionbutton was used to execute the calculation value inserted.

Result Output
========================================================

Want to know what your monthly payments might be? We can help-just fill out this form and we'll estimate your car payment. Figure below shows the appearance of the apps it is.
![alt text](myApps.png)
