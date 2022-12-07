a <- list(name="Doe", S_id="90123456")
class(a) = "Student"

print.Student <- function(obj){
  cat("name: ", obj$name, "\n")
  cat("name: ", obj$S_id, "\n")
}

getAttributes <- function(obj){
  attributes(a)
}

addAttributes <- function(){
  attr(a, "age") <- c(23)
}