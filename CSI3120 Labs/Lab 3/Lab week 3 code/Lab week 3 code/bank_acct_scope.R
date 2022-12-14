open.account <- function(total){
  list(
    deposit = function(amount){
      if(amount <= 0){
        stop("Deposits must be positive!\n")
      }
      total <<- total + amount
      cat(amount, "deposited. Your balance is : ", total, "\n\n")
    },
    withdraw = function(amount){
      if(amount > total){
        stop("You're broke :( \n")
      }
      total <<- total - amount
      cat(amount, "withdrawn. Your balance is : ", total, "\n\n")
    },
    balance =function(){
      cat("Your balance is ", total, "\n\n")
    }
  )
}

ross <- open.account(100)
robert <- open.account(200)

ross$withdraw(30)
ross$balance()
robert$balance()

ross$deposit(50)
ross$balance()
ross$withdraw(500)
