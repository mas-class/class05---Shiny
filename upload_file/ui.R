
library(shiny)

shinyUI(fluidPage(

    titlePanel("Cargar archivo"),
    sidebarLayout(
        sidebarPanel(
            fileInput('cargar_archivo', 'Cargar archivo',
                      buttonLabel = 'Buscar',
                      placeholder = 'No hay archivo'),
            dateRangeInput('rango_fecha', 'seleccione fechas',
                           min = '1900-01-05',
                           max = '2007-09-30',
                           start = '1900-01-05',
                           end = '2007-09-30'),
            downloadButton('dowload_dataframe', 'Descargar archivo')
            
        ),
        
        mainPanel(
            DT::dataTableOutput('contenido_archivo')
            
        )
        
    )
    
))
