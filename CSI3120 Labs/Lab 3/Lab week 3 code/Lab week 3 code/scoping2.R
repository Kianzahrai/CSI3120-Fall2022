#Example 1: Global variable
#txt <- "awesome"
#my_function <- function() {
#  paste("R is", txt)
#}

#Example 2: Local variable priority
#txt <- "global variable"
#my_function <- function() {
#  txt = "fantastic"
#  paste("R is", txt)
#}
#Example 3: Global assignment operator
my_function <- function() {
  txt <<- "fantastic"
  paste("R is", txt)
}

#Example 4: Changing global variable
#txt <- "awesome"
#my_function <- function() {
#  print(txt)
#  txt <<- "fantastic"
#  print(txt)
#}





