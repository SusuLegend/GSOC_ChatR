# **Easy, Medium, and Hard Test Solution for ChatR GSoC Project**

Jason Adika Tanuwijaya

## Easy Test
Problem Statement : 

Install the Ollama software, pull the Q4_K_M quantization of llama3.2:3b-instruct and ask it a question that could be answered by reading [Writing R Extensions](https://cran.r-project.org/doc/manuals/r-devel/R-exts.html).

Solution :
1. Download ollama in your pc using this [link](https://ollama.com/download).
2. Run the .exe file
3. Open your terminal and check if Ollama is install in your pc
   ```
   ollama --version
   ```
4. Pull the model that are [avaiable in ollama](https://ollama.com/search) that you want to use in this test we will use **llama3.2:3b-instruct-Q4_K_M**.
   ```
   ollama pull llama3.2:3b-instruct-Q4_K_M
   ```
5. Run the model and ask it question.
   ```
   ollama run llama3.2:3b-instruct-Q4_K_M <Your Prompt>
   ```
Testing can be see in **Easy_Test.txt**

## Medium Test
Problem Statement:

Use the ellmer package to perform the easy task above but programmatically.

Solution
1. For this test we need to use [ellmer package](https://cran.r-project.org/web/packages/ellmer/index.html) in R
2. The fucntion that we will use from this package is `chat_ollama()`
   ```
   chat_ollama(
    system_prompt = NULL,
    turns = NULL,
    base_url = "http://localhost:11434",
    model,
    seed = NULL,
    api_args = list(),
    echo = NULL
    )
   ```
Full Solution in **Medium_Test.R**

## Hard Test

