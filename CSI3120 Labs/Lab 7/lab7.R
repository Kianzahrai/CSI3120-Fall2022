# setClass("Person", representation(name = "character", age = "numeric"))
# setClass("Employee", representation(boss = "Person"), contains = "Person")
# 
# hadley <- new("Person", name = "Hadley", age = 31)
# 
# hadley <- new("Person", name = "Hadley", age = "thirty")
# # invalid class "Person" object: invalid object for slot "age" in class
# # "Person": got class "character", should be or extend class "numeric"
# 
# hadley <- new("Person", name = "Hadley", sex = "male")
# #invalid names for slots of class "Person": set
# 
# #Creating defaults:
# setClass("Person", representation(name = "character", age = "numeric"),
#          prototype(name = NA_character_, age = NA_real_))
# hadley <- new("Person", name = "Hadley")
# hadley@age
# # [1] NA


# Custom Example

check_shape <- function(obj){
  errors <- c()
  if(obj@num_sides < 1){
    errors <- c(errors, "Invalid shape")
  }
  if (length(errors) == 0) TRUE else errors
}

setClass("Polygon", representation(num_sides = "numeric"),
         validity = check_shape)

setClass("Triangle", 
         representation(b = "numeric", h="numeric"),
         contains = "Polygon")
setClass("Square",
         representation(s = "numeric"),
         contains = "Polygon")
triangle <<- new("Triangle", b = 5, h = 3, num_sides = 3)
square <<- new("Square", s = 4, num_sides = 4)

area <- function(obj){
  cat("Please define the polygon")
}

setGeneric("area", function(obj){
  standardGeneric("area")
})

setMethod("area", signature("Triangle"), function(obj){
  area = 0.5 * obj@b * obj@h
  cat("Triangle area: ", area)
})
setMethod("area", signature("Square"), function(obj){
  area = obj@s * obj@s
  cat("Square area: ", area)
})
