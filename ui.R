library(shiny)
shinyUI(
  fluidPage(
  
  headerPanel("Auto Loan Calculator"),
  
    sidebarPanel(
      h3("Your Loan Information"),
      
      div(style="display:inline-block",textInput(inputId="text1", label = "Purchase price:", width="130px" , value="0")),
      div(style="display:inline-block",p('$')),
      
      div(style="display:inline-block",textInput(inputId="text2", label = "Down payment:", width="130px", value="0")), 
      div(style="display:inline-block",p('$')),
      p(''),
      
      div(style="display:inline-block",textInput(inputId="text3", label = "Trade-in value:", width="130px" , value="0")),
      div(style="display:inline-block",p('$')),
      p(''),
      div(style="display:inline-block",textInput(inputId="text4", label = "Interest rate:", width="130px" , value="0")),
      div(style="display:inline-block",p('%')),
      div(style="display:inline-block",textInput(inputId="text6", label = "Sales tax:", width="130px", value="0")),
      div(style="display:inline-block",p('%')),
      #p(''),
      selectInput("select1", label = "Loan term:", 
                  choices = list("3 Years" = 36, "5 Years" = 60,
                                 "7 Years" = 84,"9 Years" = 108), selected = 1, width="130px"),
      p(''),
      actionButton("goButton", "Calculate"),
      width=5
      
    ),  
  titlePanel("Monthly Car Payment"),
  mainPanel(
   
    div(style="display:inline-block",p('Perchase Price before Tax: ')),
    div(style="display:inline-block",textOutput('text1')),
    p(""),
    div(style="display:inline-block",p('After State Sale Tax: ')),
    div(style="display:inline-block",textOutput('text2')),
    p(""),
    div(style="display:inline-block",p('Monthly Payment: ')),
    div(style="display:inline-block",textOutput('text3')),
    p(""),
    div(style="display:inline-block",p('Total Payment: ')),
    div(style="display:inline-block",textOutput('text4')),
    p(""),
    div(style="display:inline-block",p('Total Interest Paid: ')),
    div(style="display:inline-block",textOutput('text5')),
    width=5
    
  )
)
)
