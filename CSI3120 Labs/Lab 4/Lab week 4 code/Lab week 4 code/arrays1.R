assignment_arrays <- function(){
  z <- 1:1500
  dim(z) <- c(3,5,100) #Create 100 3 by 5 arrays(matrices)
  print(z)
}

accessing_arrays <- function(){
  x <- array(1:20, dim=c(4,5)) # generate a 4 by 5 array
  i <- array(c(1:3,3:1), dim=c(3,2)) # i is a 3 by 2 index array
  #print(x)
  #print(i)
  print(x[i]) #access these elements from x
  x[i] <- 0 # Replace these elements with 0.
  print(x)
}

outer_eval <- function(){
  x <- 1:5
  y <- 1:5
  f <- function(x, y) cos(y)/(1 + x^2)
  z <- outer(x,y,f)
  print(z)
}