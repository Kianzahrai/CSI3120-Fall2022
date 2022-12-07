#Lab 3 
#Example 1: Block scope


foo <- function(){
  x <- 6
  {
    x <- 10
    {
      y <- 10 * x
      {
        x <- x * y
        {
          print(x*2)
        }
      }
    }
  }
}

#Example 2: Scoped variable usage within functions.
#This function references a global (or outermost scope)
#variable t.

#Create global variable
txt <- "Hi"
scoping <- function(){
  txt <<- "World"
  paste("Text is", txt)
}
print(txt)

#Example 3: Variable aliasing
aliasing <- function(){
  my_vec <- c(2.0,3.0)
  my_vec[4] <- 4.0
  print(length(my_vec))
  print(my_vec)
  print(my_vec[3])
}

