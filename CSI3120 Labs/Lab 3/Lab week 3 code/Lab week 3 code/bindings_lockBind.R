#Locking bindings
e <- new.env()
assign("x", 1, envir=e)
get("x", envir=e)
lockBinding("x", e)
try(assign("x", 2, envir=e))#error
unlockBinding("x", e)
assign("x", 2, envir=e)
get("x", envir=e)
