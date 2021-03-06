#______________________________________________________________________________
# FILE: r/vis/PathQuery-app/ui.R
# DESC: Path Query App
# SRC : 
# IN  : Stardog Triplestore
# OUT : 
# REQ : 
# SRC : 
# NOTE:  hard coded start node: cdiscpilot01:Person_01-701-1015
# TODO: 
# 
#______________________________________________________________________________
fluidPage(

  tags$head(
      tags$link(rel = "stylesheet", type = "text/css", href = "styles.css")
    ),
  titlePanel(HTML("Path Queries, PhUSE CTDasRDF Project")),
  fluidRow(
    column(4, textInput('startNode', label=h4("Start Node"),  width = '400px', value = "cdiscpilot01:Person_01-701-1015")),
    #column(3, selectInput('hops',label = h4("Hops"), width= '100px', choices = list('1' = 1, '2' = 2, '3' = 3),
    #  selected = 1))
    
    column(3,  numericInput("hops", label=h4("Hops"), 1, min = 1, max = 4, width='60px'))
  ),
  fluidRow(
    column = 12,
    offset = 0, 
    style='padding:5px;',
    visNetworkOutput("path_vis", height = '800px')
  )
)

