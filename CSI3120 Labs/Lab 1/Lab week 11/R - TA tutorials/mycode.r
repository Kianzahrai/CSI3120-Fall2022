myfunction <- function(){
  x <- rnorm(1000)
  mean(x)
}

second <- function(x){
  x + rnorm(length(x)) # adding noise
}

inc <- function(x){
  eval.parent(substitute(x <- x + 1))
}

addition <- function(){
  {
    var1 = readline("Enter number 1");
    var2 = readline("Enter number 2");
  }
  var1 = as.integer(var1);
  var2 = as.integer(var2);
  print(var1+var2);
}