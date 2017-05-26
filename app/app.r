library(shiny)
#deployApp()
ui <- fluidPage(
  wellPanel(
    fluidRow(
      headerPanel('Daily news archive (2008-2016)'),
      column(3, dateInput(inputId = "datum",
                          label = "Date [YYYY-MM-DD]",
                          min = as.Date(0, origin = "2008-06-08"),
                          max = as.Date(2945, origin = "2008-06-08")
      ),
      numericInput(inputId = "stevilo",
                   label = "Number of news [1-25]",
                   value = 1,
                   min = 1,
                   max = 20
      ),
      actionButton("display", "Display")),
      column(5, tags$img(height = 100, width = 200, 
                         src = "reddit.png"), offset = 4))),
  tableOutput("tabelaNovic")
)


server <- function(input, output) {
  
  novice <- eventReactive(input$display, {
    novice <- read.csv("RedditNews.csv")
    novice$Date <- as.Date(novice$Date)
    novice$News <- as.character(novice$News)
    novice <- novice[novice[,1] == as.character(input$datum),]
    novice <- novice[1:input$stevilo,]
    novice$nr <- c(1:input$stevilo)
    novice <- novice[,c("nr", "News")]
  })
  
  output$tabelaNovic <- renderTable({
    novice()
  })
}


shinyApp(ui = ui, server = server)