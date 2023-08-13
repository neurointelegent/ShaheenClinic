#####
install.dependies <- function(){
  install.packages(c("git2r","shiny",
                   "shinydashboard","shinyWidgets",
                   "shinymanager","tidyverse","getip",
                   "htmltools"))}
######
start.course <- function(){
library(git2r)
# Set your username and PAT as variables
username <- "drahmedshaheen"
pat <- "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"
# Get the URL of the repository
url <- "https://github.com/drahmedshaheen/app-data.git"
# Create a local directory to clone the repository
dir <- tempfile()
repo <- git2r::clone(url, dir, credentials = git2r::cred_user_pass(username, pat))
# Source the script file
source(paste0(dir,"/my_function.R"))
user_db = read.csv(paste0(dir,"/user_db.csv"))
file = read.csv(paste0(dir,"/links.csv"))
app(user_db,file)}

