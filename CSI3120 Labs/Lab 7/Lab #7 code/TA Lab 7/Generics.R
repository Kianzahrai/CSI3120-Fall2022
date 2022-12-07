#S3
generic_S3 <- function(){
  x <- structure(1, class = letters)
  bar <- function(x) UseMethod("bar", x)
  bar.z <- function(x) "z"
  bar.x <- function(x) "x"
  print(bar(x))
  print(bar.x(x))
  print(bar.z(x))
}

#S4
generic_S4 <- function(){
  setClass("Shapes", representation(
    name = "character",
    num_sides = "numeric"
  ))
  triangle <<- new("Shapes", name="Triangle", num_sides=3)
}

create_own_method <- function(){
  setMethod("show", "Shapes", function(obj){cat(obj@name, "\n", obj@num_sides)})
}
delete_generic_method <- function(){
  removeMethod("show", "Shapes")
}