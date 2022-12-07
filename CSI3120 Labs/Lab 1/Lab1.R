checkEvenOdd <- function(a) {
  a <- as.integer(a)
  if(a %% 2 == 1){
    sprintf("%d is odd", a)
  }
  else{
    sprintf("%d is even", a)
  }
}

factorialFunc <- function(n) {
  factorial <- 1
  for(i in 1:n){
    factorial <- factorial * i
  }
  print(factorial)
}

CumulativeSum <- function(){
  s = scan("text.txt", what = " ")
  result <- cumsum(as.integer(s))
  print(result)
}