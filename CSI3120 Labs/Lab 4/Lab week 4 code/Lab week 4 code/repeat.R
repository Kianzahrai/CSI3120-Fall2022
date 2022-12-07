repeat_break_logic <- function(){
  x <- 1
  repeat{
  print(x)
  x = x+1
  if(x==6){
    break
    }
  }
}

next_logic <- function(){
  for(val in 1:10){
  if(val == 3){
    next
  }
  print(val)
  }
}