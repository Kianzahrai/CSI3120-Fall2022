#library(Dict)

a <- 2
print(class(a)) # method to check data type

# Follow slides in Lab2 Week 2 PowerPoint slides.

b <- TRUE
print(class(b))

c <- 0.0001 + 1.1
d <- utf8ToInt("a") + 2 # converting ASCII a into its numerical value associated to it.
print(d)

e <- 3120L # used to denote integer type
print(e)
print(class(e))

f <- 3120 + 1i
print(f)
print(class(f))

g <- "g"
print(g)
print(class(g))
charToRaw <- g
print(class(g))

library(Dict)


'%!in%' = Negate('%in%')
aa <- seq(1, 6)
bb <- seq(2, 9)

print(aa %!in% bb)

rec_fac <- function(x){
  if(x == 0 || x == 1){
    return(1)
  }
  else{
    return(x*rec_fac(x-1))
  }
}

like <- Dict$new(
  "1" = 5,
  "2" = 6,
  "3" = 15
)

value_vect <- c()

for(i in names(like)) {
  print(like$get(i))
}

#print(value_vector)



