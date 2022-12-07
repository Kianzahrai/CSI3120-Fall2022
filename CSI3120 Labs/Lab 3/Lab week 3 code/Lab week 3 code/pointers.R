#Pointers
install.packages("pointr", dependencies = TRUE)
library(pointr)

basic_ptr <- function(){
  myvar <- 3
  ptr("myptr","myvar")
  print(myptr)
  #Changing the pointed value changes pointer's value as well 
  myvar <- 5
  print(myptr)
  #The reverse also applies
  myptr <- 7
  print(myvar)
}