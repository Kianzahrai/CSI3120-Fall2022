f <- local({ # no need to pass an "e" as the environment, 
  #it will automatcally bind to the local enviroment
  x <- 1
  function(v){
    if(missing(v)){
      cat("get\n")
    }
    else{
      cat("set\n")
      x <<- v
    }
    print(x)
  }
})
makeActiveBinding("fred", f, .GlobalEnv)
bindingIsActive("fred", .GlobalEnv)

fred
fred <- 2
fred