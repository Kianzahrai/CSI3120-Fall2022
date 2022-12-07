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
