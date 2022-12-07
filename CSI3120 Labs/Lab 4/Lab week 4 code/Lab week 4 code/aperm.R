#aperm example:

aperm_2d <- function(){
  x <- array(2:9, c(4,5))
  aperm(x)
}

aperm_3d <- function(){
  x <- array(1:24, 2:4) 
  #Create 4 * (2 by 3 arrays). Simpler way to understand array(1:(2*3*4), c(2,3,4))
  xt <- aperm(x, c(3,2,1))
  print(xt)
}