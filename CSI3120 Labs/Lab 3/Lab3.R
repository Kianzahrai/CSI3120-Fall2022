cube <- function(n){
  sq <- function() n*n
  n*sq()
}
cube(9)

#spandrav@uottawa.ca --> deadline: Friday Oct. 21

books <- c("1", "2", "3", "4", "5")

libary <- function(books){
  list(
    takeAbook = function(days){
      if(days > 5){
        stop("Deposits must be positive!\n")
      }
      books <<- books[-1]
      cat(number, "deposited. Your remaining# books to return is : ", total, "\n\n")
    },
    returnAback = function(bookName){
      books <<- append(books, bookName)
      if(amount > total){
        stop("You're late for returning :( \n")
      }
      total <<- total - amount
      cat(amount, "Books to return: Your remaining # books is : ", total, "\n\n")
    },
    showBooks =function(){
      cat("Your remaining # books is ", total, "\n\n")
    }
  )
}


newenv <- new.env()

f <- function(n, env = newenv){
  lockEnvironment(newenv)
  if (n <= 0){
    print("Enter a positive integer!")
  }
  if(n == 1){
    return(n)
  }
  return(n + f(n-1))
}

f(5)



