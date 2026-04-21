# Original Social Discounting Task Data Collection Shiny App
# Version 1.0  
# Author: Naomi Nero
# Date: April 21, 2026
# Correspondence concerning this manual and package should be addressed to Naomi Nero, Department of Psychology, Georgetown University, White Gravenor Hall, Washington, DC 20057, United States. 
# Email: nn444@georgetown.edu


# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    https://shiny.posit.co/
#

library(shiny)
library(bslib)
library(shiny)

library(shiny)
library(bslib)

ui <- fluidPage(
  titlePanel("Social Discounting Task"),
  
  # Add custom CSS
  tags$head(
    tags$style(HTML("
      .full-width-container {
        width: 100vw;
        display: flex;
        flex-direction: column;
        align-items: center;
        text-align: center;
      }

      .radio-inline {
        display: flex;
        justify-content: center;
        width: 100%;
      }

      .radio-inline label {
        margin: 0 20px; /* space between choices */
      }
    ")),
    tags$script(HTML("
    Shiny.addCustomMessageHandler('scrollTop', function(message) {
    window.scrollTo({ top: 0, behavior: 'smooth' });
    });
                     "))
  ),
  
  uiOutput("main_ui")
)


server <- function(input, output, session) {
  
  # ------------------ Storage ------------------
  Ns <- c(1, 2, 5, 10, 20, 50, 100)
  keep <- c("$155", "$145", "$135", "$125", "$115", "$105", "$95", "$85", "$75")
  responses <- reactiveValues(
    subnum = NULL,
    names_df = NULL,
    values = matrix(
      NA,
      nrow = length(Ns),
      ncol = length(keep),
      dimnames = list(
        paste0("sd_", Ns),
        paste0("choice_", seq_along(keep))
      )
    )
  )
  
  # ------------------ Page state ------------------
  page <- reactiveVal("id")
  current_trial <- reactiveVal(1)
  
  # ------------------ Render UI ------------------
  output$main_ui <- renderUI({
    
    if (page() == "id") {
      tagList(
        h3("Participant ID"),
        textInput("subnum_input", "Enter Participant ID:"),
        actionButton("save_id", "Continue")
      )
    }
    
    else if (page() == "instructions") {
      tagList(
        h3("Instructions"),
        p("The following task asks you to imagine that you have made a list of the 100 people closest to you in the world ranging from your dearest friend or relative at position #1 to a mere acquaintance or stranger at #100. The person at #1 would be someone you know well and is your closest friend or relative. The person at #100 might be someone you recognize and encounter but perhaps you may not even know their name."),
        actionButton("go_names", "Continue")
      )
    }
    
    else if (page() == "names") {
      tagList(
        h3("Please indicate the name and your relationship to the person for each individual on the list. You do not have to provide a name for Person #100, as this represents a stranger."),
        textInput("n1_name", "Person #1 Name:"), textInput("n1_relationship", "Person #1 Relationship:"),
        textInput("n2_name", "Person #2 Name:"), textInput("n2_relationship", "Person #2 Relationship:"),
        textInput("n5_name", "Person #5 Name:"), textInput("n5_relationship", "Person #5 Relationship:"),
        textInput("n10_name", "Person #10 Name:"), textInput("n10_relationship", "Person #10 Relationship:"),
        textInput("n20_name", "Person #20 Name:"), textInput("n20_relationship", "Person #20 Relationship:"),
        textInput("n50_name", "Person #50 Name:"), textInput("n50_relationship", "Person #50 Relationship:"),
        actionButton("save_names", "Continue")
      )
    }
    
    else if (page() == "instructions2") {
      tagList(
        h3("Instructions"),
        p(HTML("Next you will be asked to make a series of judgments based on your preferences. For each question, you will be asked if you would prefer to receive an amount of money for yourself versus an amount of money for yourself and the person listed. <br><br>Please answer as quickly and accurately as possible, but do not sacrifice accuracy for speed.")),
        actionButton("go_choice", "Continue")
      )
    }
    
    else if (page() == "choice") {
      this_N <- Ns[current_trial()]
      person_name <- if (this_N == 100) {
        "Stranger"
      } else {
        input[[paste0("n", this_N, "_name")]] %||% "(no name provided)"
      }
      
      trial_ui <- div(
          style = "display:flex; flex-direction:column; align-items: center; text-align:center; width:100%;",
          lapply(seq_along(keep), function(i) {
            radioButtons(
              inputId = paste0("choice_", i),
              label = paste(paste("Now imagine the following choice between an amount of money for you and an amount for the #", this_N, "person on your list:", person_name)),
              choices = c(
                paste("Keep", keep[i], "for yourself"),
                paste("$75 for you and $75 for #", this_N, "on your list")
              ),
              selected = character(0)
              )}
            )
          )
        
      tagList(
        div(
          style = "width:100%; text-align:center;",
          h3(paste("Choices for person #",this_N, ":",person_name)),
          div(
            style = "display:flex; flex-direction:column; align-items:center; width:100%;",
            trial_ui,
            actionButton("save_choice", "Submit")
            )
          )
      )
      }
    
    else if (page() == "finished") {
      tagList(
        h3("Thank you!"),
        p("Your responses have been recorded.")
      )
    }
  })
  
  # ------------------ Navigation ------------------
  observeEvent(input$save_id, {
    
    if (is.null(input$subnum_input) || input$subnum_input == "") {
      showNotification("Please enter a participant ID.")
      return()
    }
    
    responses$subnum <- input$subnum_input
    
    page("instructions")
  })
  
  observeEvent(input$go_names, {
    page("names")
  })
  
  observeEvent(input$save_names, {
    # Optional: require at least person #1
    required_fields <- c(
      input$n1_name, input$n2_name, input$n5_name,
      input$n10_name, input$n20_name, input$n50_name,
      input$n1_relationship, input$n2_relationship, input$n5_relationship,
      input$n10_relationship, input$n20_relationship, input$n50_relationship
    )
    
    if (any(sapply(required_fields, function(x) is.null(x) || x == ""))) {
      showModal(modalDialog(
        title = "Missing Responses",
        "Please enter a name and relationship for each person.",
        easyClose = TRUE,
        footer = modalButton("OK")
      ))
      return()
    }
    
    responses$names_df <- data.frame(
      names_1 = input$n1_name,
      names_2 = input$n2_name,
      names_3 = input$n5_name,
      names_4 = input$n10_name,
      names_5 = input$n20_name,
      names_6 = input$n50_name,
      
      relationships_1 = input$n1_relationship,
      relationships_2 = input$n2_relationship,
      relationships_3 = input$n5_relationship,
      relationships_4 = input$n10_relationship,
      relationships_5 = input$n20_relationship,
      relationships_6 = input$n50_relationship,
      
      stringsAsFactors = FALSE
    )
    
    page("instructions2")
  })
  
  observeEvent(input$go_choice, {
    current_trial(1)
    page("choice")
  })
  
  observeEvent(input$save_choice, {
    # Collect all 9 answers
    this_N <- Ns[current_trial()]
    
    answers <- sapply(seq_along(keep), function(i) {
      val <- input[[paste0("choice_", i)]]
      if (is.null(val)) "" else val
    })
    
    if (any(answers == "")) {
      showModal(modalDialog(
        title = "Missing Responses",
        "Please answer all questions before continuing.",
        easyClose = TRUE,
        footer = modalButton("OK")
      ))
      return()
    }
    
    # Save responses
    # Convert answers to numeric values
    values <- sapply(seq_along(answers), function(i) {
      if (grepl("^Keep", answers[i])) {
        if (i == 9) {
          return(-5)
        } else {
          return(0)
        }
      } else {
        return(80 - 10 * (i - 1))
      }
    })
    
    # Save responses
    responses$values[current_trial(), ] <- values
    
    # Move to next trial or finish
    if (current_trial() < length(Ns)) {
      current_trial(current_trial() + 1)
      page("choice")
      session$sendCustomMessage("scrollTop", list())
    } else {
      
      value_df <- as.data.frame(
        matrix(
          t(responses$values),
          nrow = 1
        )
      )
      
      colnames(value_df) <- paste0(
        rep(paste0("sd", Ns), each = length(keep)),
        "_",
        rep(seq_along(keep), times = length(Ns))
      )
      
      final_data <- cbind(
        subnum = responses$subnum,
        responses$names_df,
        value_df
      )
      
      write.csv(
        final_data,
        paste0(responses$subnum, "_longsocial_discounting.csv"),
        row.names = FALSE
      )
      
      page("finished")
    }
  })
  
  
}

shinyApp(ui, server)

