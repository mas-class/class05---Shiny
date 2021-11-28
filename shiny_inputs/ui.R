
library(shiny)
library(lubridate)

shinyUI(fluidPage(

    titlePanel("shiny inputs ejemplos"),
    sidebarLayout(
        sidebarPanel(
            
            #definir el slider01
            sliderInput("slider_in", "seleccionar un valor",
                        min = 0,
                        max = 100,
                        value = 50,
                        step = 10,
                        post = '%',
                        pre = 'Q',
                        animate = animationOptions(interval = 250, loop = TRUE)
                        ),
            
            #definir slider02 por rango
            sliderInput("slider_mult", 'seleccione rango',
                        min = -10,
                        max = 10,
                        value = c(-5, 5)
                        ),
            
            #definir slider03 numerico
            numericInput("num_in", 'ingrese valor',
                        min = 0,
                        max = 50,
                        value = 25
                        ),
            
            #definir slider04 Cumpleanos
            dateInput("single_date", 'fechas de cumple',
                      value = today(),
                      language = 'es',
                      weekstart = 1,
                      format = 'dd-mm-yyyy'
                      ),
            
            #definir slider05 rango de cumpleanos
            dateRangeInput("range_date", 'seleccione un rango de fecha',
                           max = today(),
                           min = today()-365,
                           start = today()-7,
                           end = today(),
                           language = 'es',
                           weekstart = 1,
                           separator = 'a'
                           ),
            
            #definir slider06 checkbox
            checkboxInput("single_chk", 'mostrar', value = TRUE),
            
            #definir slider07 multiple checkbox
            checkboxGroupInput("mult_chk", 'seleccione nivel',
                               choices = 1:5,
                               selected = 1),
            
            #definir slider08 de seleccion
            radioButtons("radio_in", 'seleccionar genero',
                         choices = c('masculino', 'femenino', 'otros'),
                         selected = 'femenino',
                         inline = F),
            
            #definir slider09 buton de accion
            actionButton("action_btn", 'refrescar'),
            
            #definir slider10
            br(),
            actionLink("action_link", 'salir')
            
            #accion especial - detiene la ejecucion automatica
            #submitButton("ejecutar")
            

        ),

        # Muestra la distribucion de los output
        mainPanel(
            #titulo sliders
            h1('salir de los inputs de shiny'),
            
            #sub titulo slider01
            h2('slider IO'),
            #output
            verbatimTextOutput('single_slider_out'),
            
            #sub titulo slider02
            h2('slider multiple IO'),
            verbatimTextOutput('multi_slider_out'),
            
            #sub titulo slider03
            h2('numeric IO'),
            verbatimTextOutput('num_out'),
            
            #sub titulo slider04
            h2('date IO'),
            verbatimTextOutput('single_date_out'),
            
            #sub titulo slider05
            h2('date range IO'),
            verbatimTextOutput('range_date_out'),
            
            #sub titulo slider06
            h2('checkbox IO'),
            verbatimTextOutput('chk_out'),
            
            #sub titulo slider07
            h2('checkbox group IO'),
            verbatimTextOutput('multi_chk_out'),
            
            #sub titulo slider08
            h2('radio IO'),
            verbatimTextOutput('radio_out'),
            
            #sub titulo slider09
            h2('action IO'),
            verbatimTextOutput('action_out'),
            
            #sub titulo slider10
            h2('link IO'),
            verbatimTextOutput('action_link_out')
            
            
        )
    )
))
