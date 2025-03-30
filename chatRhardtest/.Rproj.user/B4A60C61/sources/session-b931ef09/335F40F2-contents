install.packages("ellmer")
library(ellmer)


chat <- chat_ollama(
  model = "llama3.2:3b-instruct-Q4_K_M",
  system_prompt = "You are an R expert. Use the https://cran.r-project.org/ for the reference."
  )

# Define the question
question <- "How do I register native routines in an R package?"

response <- chat$chat(question)

print(response)

