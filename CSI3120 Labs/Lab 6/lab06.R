#Exercise 1 : Declare an array of size 100. Truncate this into 5 different arrays of size 20

my_array <- c(1:100)
print(my_array)

my_array <- my_array[5 * 1:20]
print(my_array)


#Exercise 2

kian <- list(name = "Kian", age = 21, yearsOfUniCompleted = 4)
class(kian) = "UniversityStudent"

print.UniversityStudent <- function(obj) {
  cat("name: ", obj$name, "\n")
  cat("age: ", obj$age, "\n")
  cat("year: ", obj$yearsOfUniCompleted, "\n")
}

getAttributes <- function(obj) {
  attributes(kian)
}

addAttributes <- function() {
  attr(kian, "program") <- c("Comp Sci")
}
