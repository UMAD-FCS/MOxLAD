
library(shiny)
library(shinydashboard)
library(tidyverse)

# Define UI for application that draws a histogram
ui <- dashboardPage(
  
  
  #### > PORTADA Y PANEL LATERAL ----
  
  skin = "black",
  dashboardHeader(
    title = "",
    titleWidth = 200
  ),
  dashboardSidebar(
    width = 200,
    
    
    sidebarMenu(id = "mySidebar",
                menuItem("INICIO", tabName = "inicio"),
                menuItem("BASE DE DATOS", tabName = "base"),
                menuItem("METODOLOGÍA", tabName = "metodologia"),
                menuItem("ACERCA DE", tabName = "acercade")
                
                )),
  
  dashboardBody(
    
    tags$style(type="text/css",
               ".shiny-output-error { visibility: hidden; }",
               ".shiny-output-error:before { visibility: hidden; }"), # Quita mensajes de error (ojo)
    tags$style(".nav-tabs>li>a { color: orange;}"),
    
    tabItems(
      tabItem(tabName = "inicio",
              h3("BASE DE DATOS DE HISTORIA ECONÓMICA DE AMÉRICA LATINA"),
              br(),
              br(),
              fluidRow(column(6,
                              
                              img(src = "logo.png",
                                  style = "float: left;",
                                  height = "120")
                              
              )), 
              br(),
              br(),
              br(),
              br(),
              br(),
              br(),
              br(),
              br(),
              h4("Sitio en construcción"),
              h4("Comunicarse a: umad.moxlad@cienciassociales.edu.uy"),
              
              # column(6,img(src = "SIIAS_Logo_2022_MIDES_fondo_transp.png",
              #              style = "float: left;",
              #              height = "120")
              
              
              ))
  
  
  
  
  )
)


server <- function(session, input, output) {
  
}



# Run the application 
shinyApp(ui = ui, server = server)
