library(shiny)

shinyServer(
  function(input, output) {
    
    finance<-function(){
      as.numeric(input$text1) - as.numeric(input$text2) - as.numeric(input$text3)
    }
    
    tax <- function() {
      round((finance() * as.numeric(input$text6)/100)+finance(),2)
    }
    
    interest<- function(){
      as.numeric(input$text4)/100
    }
    
    payment<- function(){
      round((interest()/12)*tax(),2)
    }
    
    loanPayment<-function(){
      round(payment()/(1-(1/(((interest()/12)+1)^as.numeric(input$select1)))),2)
    }
    
    loan<-function(){
      round((1+(interest()/12))^as.numeric(input$select1),2)
    }
    totalInterest<-function(){
      round(tax()*((loan()*(interest()/12))/(loan()-1)),2)
    }
    
    #Price before Tax
    output$text1 <- renderText({if (input$goButton == 0) "0"
                                else if (input$goButton == 1) finance()
                                else finance()
      })
    #After State Sale Tax
    output$text2 <- renderText({if (input$goButton == 0) "0"
                                else if (input$goButton == 1) tax()
                                else tax()})
    #Monthly Payment
    output$text3 <- renderText({if (input$goButton == 0) "0"
                                else if (input$goButton == 1) loanPayment()
                                else loanPayment()})
    #Total Cost
    output$text4 <- renderText({if (input$goButton == 0) "0"
                                else if (input$goButton == 1) totalInterest()*as.numeric(input$select1)
                                else totalInterest()*as.numeric(input$select1)})
    #Total Interest
    output$text5 <- renderText({if (input$goButton == 0) "0"
                                else if (input$goButton == 1) (totalInterest()*as.numeric(input$select1))-finance()
                                else (totalInterest()*as.numeric(input$select1))-finance()})
  }
)

