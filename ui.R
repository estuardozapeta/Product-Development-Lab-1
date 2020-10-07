library(shiny)

shinyUI(fluidPage(
    
    titlePanel("Shiny Inputs"),
    
    
    sidebarLayout(
        sidebarPanel(
            sliderInput("slider_io_1",
                        "Select a value:",
                        min = 0,
                        max = 100,
                        value = 50,
                        step = 5
                        ),
            sliderInput("slider_io_2",
                        "Select a range:", 
                        min = 0, 
                        max = 200, 
                        value = c(0, 170)
                        ),
            selectInput("select_1", 
                        "Seleccione un auto:",
                        c("Mazda RX4" = "Mazda RX4",
                          "Mazda RX4 Wag" = "Mazda RX4 Wag",
                          "Datsun 710" = "Datsun 710",
                          "Hornet 4 Drive" = "Hornet 4 Drive",
                          "Hornet Sportabout" = "Hornet Sportabout",
                          "Valiant" = "Valiant",
                          "Duster 360" = "Duster 360",
                          "Merc 240D" = "Merc 240D",
                          "Merc 230" = "Merc 230",
                          "Merc 280" = "Merc 280")
            ),
            selectInput("select_2", 
                        "Select a car:",
                        c("Mazda RX4" = "Mazda RX4",
                          "Mazda RX4 Wag" = "Mazda RX4 Wag",
                          "Datsun 710" = "Datsun 710",
                          "Hornet 4 Drive" = "Hornet 4 Drive",
                          "Hornet Sportabout" = "Hornet Sportabout",
                          "Valiant" = "Valiant",
                          "Duster 360" = "Duster 360",
                          "Merc 240D" = "Merc 240D",
                          "Merc 230" = "Merc 230",
                          "Merc 280" = "Merc 280"),
                        multiple=TRUE
                        ),
            dateInput("date_1", 
                      "Select multiple cars:", 
                      value = Sys.Date()
                      ),
            dateRangeInput("date_2", 
                           "Select a date range:",
                           start = "2020-10-01",
                           end   = "2020-10-31"
                           ),
            numericInput("numeric_io", 
                         "Input a value:", 
                         10, 
                         min = 1, 
                         max = 100),
            checkboxInput("check_1", 
                          "Check if is true", 
                          FALSE),
            checkboxGroupInput("check_2", "Check multiple values:",
                               c("A" = "A",
                                 "B" = "B",
                                 "C" = "C",
                                 "D" = "D",
                                 "E" = "E")
                               ),
            radioButtons("radio", 
                         "Select a sex:",
                         c("Male" = "Male",
                           "Female" = "Female"),
            ),
            textInput("text_io", 
                      "Input text:", 
                      ""
                      ),
            textAreaInput("text_area_io", 
                          "Input text area", 
                          ""),
            actionButton("button_io", 
                         "Click"
                         ),
            actionLink("link_io", 
                       "Next"
                       )
        ),
        mainPanel(
            h3("Slider single input"),
            verbatimTextOutput("slider_output"),
            h3("Slider range input"),
            verbatimTextOutput("slider_range_output"),
            h3("Select input"),
            verbatimTextOutput("select_output"),
            h3("Select multiple input"),
            verbatimTextOutput("select_multiple_output"),
            h3("Date input"),
            verbatimTextOutput("date_output"),
            h3("Date range input"),
            verbatimTextOutput("date_range_output"),
            h3("Numeric input"),
            verbatimTextOutput("numeric_output"),
            h3("Check input"),
            verbatimTextOutput("check_output"),
            h3("Check multiple input"),
            verbatimTextOutput("check_multiple_output"),
            h3("Radio button"),
            verbatimTextOutput("radio_button_output"),
            h3("Input text"),
            verbatimTextOutput("text_output"),
            h3("Input text area"),
            verbatimTextOutput("text_area_output"),
            h3("Action button"),
            verbatimTextOutput("button_output"),
            h3("Action link button"),
            verbatimTextOutput("link_output")
            )
        )
    )
)
