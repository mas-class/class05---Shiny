
library(shiny)

shinyServer(function(input, output) {
    
    #slider01
    output$single_slider_out <- renderPrint({
        input$slider_in
    })
    
    #slider02
    output$multi_slider_out <- renderPrint({
        input$slider_mult
    })
    
    #slider03
    output$num_out <- renderPrint({
        input$num_in
    })
    
    #slider04
    output$single_date_out <- renderPrint({
        input$single_date
    })
    
    #slider05
    output$range_date_out <- renderPrint({
        input$range_date
    })
    
    #slider06
    output$chk_out <- renderPrint({
        input$single_chk
    })
    
    #slider07
    output$multi_chk_out <- renderPrint({
        input$mult_chk
    })
    
    #slider08
    output$radio_out <- renderPrint({
        input$radio_in
    })
    
    #slider09
    output$action_out <- renderPrint({
        input$action_btn
    })
    
    #slider10
    output$action_link_out <- renderPrint({
        input$action_link
    })


})












