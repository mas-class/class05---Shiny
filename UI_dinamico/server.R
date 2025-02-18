
library(shiny)

shinyServer(function(input, output, session) {
  
  #Ejempl01
  observeEvent(input$min1, {
    updateSliderInput(session, 'slider1', min=input$min1)
  })
  observeEvent(input$max1, {
    updateSliderInput(session, 'slider1', max = input$max1)
    
  })
  
  #Ejempl02
  observeEvent(input$reset, {
    updateSliderInput(session, 's1', value=0)
    updateSliderInput(session, 's2', value=0)
    updateSliderInput(session, 's3', value=0)
    updateSliderInput(session, 's4', value=0)
    
  })
  
  #Ejempl03
  observeEvent(input$n, {
    if(is.na(input$n)){
      nombre = 'correr'
    } else if(input$n==1){
      nombre <- paste('correr', input$n, 'vez', sep=' ')
    } else{
      nombre <- paste('correr', input$n, 'veces', sep=' ')
    }
    
    updateActionButton(session, 'correr', label=nombre)
    
  })
  
  #Ejempl04
  observeEvent(input$nvalue, {
    updateNumericInput(session, 'nvalue', value=input$nvalue + 1)
  })
  
  #Ejempl05
  observeEvent(input$celcius, {
    f <- round(input$celcius*(9/5)+32)
    updateNumericInput(session, 'farenheit', value=f)
  })
  observeEvent(input$farenheit, {
    c <- round((input$farenheit-32)*(5/9))
    updateNumericInput(session, 'celcius', value=c)
               
  })
  
  
})
