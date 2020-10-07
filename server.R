library(shiny)

shinyServer(function(input, output) {
    
    counter <- reactiveValues(countervalue = 0)
    counterLink <- reactiveValues(counterLinkValue = 0)
    
    output$slider_output <- renderPrint({ input$slider_io_1 })
    output$slider_range_output <- renderPrint({ input$slider_io_2 })
    output$select_output <- renderPrint({ input$select_1 })
    output$select_multiple_output <- renderPrint({ input$select_2 })
    output$date_output <- renderPrint({ input$date_1 })
    output$date_range_output <- renderPrint({ input$date_2 })
    output$numeric_output <- renderPrint({ input$numeric_io })
    output$check_output <- renderPrint({ input$check_1 })
    output$check_multiple_output <- renderPrint({ input$check_2 })
    output$radio_button_output <- renderPrint({ input$radio })
    output$text_output <- renderPrint({ input$text_io })
    output$text_area_output <- renderPrint({ input$text_area_io })
    output$text_area_output <- renderPrint({ input$text_area_io })
    
    observeEvent(input$button_io, {
        counter$countervalue <- counter$countervalue + 1
    })
    output$button_output <- renderPrint({ counter$countervalue })
    
    observeEvent(input$link_io, {
        counterLink$counterLinkValue <- counterLink$counterLinkValue + 1
    })
    output$link_output <- renderPrint({ counterLink$counterLinkValue })

})
