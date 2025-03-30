#' Get Exported Functions of an R Package (via Ollama)
#'
#' @param package_name The name of the R package to query.
#' @return A character vector of function names (as guessed by Ollama).
#' @import ellmer
#' @export
#'
functions_list_chatR <- function(package_name) {
  chat <- chat_ollama(
    model = "llama3.2:3b-instruct-Q4_K_M",
    system_prompt = "You are an R expert. Use the https://cran.r-project.org/ for the reference.
    The answer should be only return the name of the functions seperated by commas. No need to do explanation or other context
    Here's are the example for the format:

    Prompt :
    List all exported functions from the R package ggplot2. Output it as a string seperated by commas

    Answer :
    ggrepel, ggplot2, geom_common, geom_label.

    Output as many function that you can find.
    "
  )


  question <- paste("List all exported functions from the R package", package_name, ". Output it as a string seperated by commas")

  # Run the model with the question
  response <- chat$chat(question)

  # Return as a character vector
  return(response)
}
