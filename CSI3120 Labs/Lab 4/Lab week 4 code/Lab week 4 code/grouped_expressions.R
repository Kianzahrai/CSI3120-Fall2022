#Grouped expressions
#Example 1:

{
  3*5
  Sys.Date()
  x <- 7
  a.vec <- c(1,2,3)
  c("Happy Thanksgiving")
} -> y

{
  3*5
  print(Sys.Date())
  x <- 7
  a.vec <- c(1,2,3)
  c("Happy Thanksgiving")
} -> z

#Example 2:
{ 
  samp <- rnorm(1000, 5, 10)#Generate 1000 values from a N(5, 10^2)
  hist(samp)#Generate a histogram of data
  min(samp)#Calculate min but no need to print
  print(min(samp))#Calculate min but print
  stats <- c(mean(samp), var(samp))
} -> my.stats

#my.stats
#Why grouped expressions? Functions are defined using this concept.
#All conditional expressions use grouped expressions.
#Functions that expect a single expression can be labelled as group expressions