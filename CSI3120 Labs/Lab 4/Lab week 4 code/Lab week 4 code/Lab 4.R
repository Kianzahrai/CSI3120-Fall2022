#Exercise 1
{ 
  samp <- rnorm(100000, 0, 10**3)#Generate 1000 values from a N(5, 10^2)
  plot(samp)#Generate a plot of data
  stats <- c(mean(samp), var(samp))
} -> my.stats

#Exercise 2

outer_prod <- function(){
  m1 <- 1:5
  m2 <- 5:10
  dim(m1) <- c(1, 5)
  dim(m2) <- c(1, 6)
  f <- function(x, y) cos(x)/(y^2 - cos(x))
  z <- outer(m1,m2,f)
  print(z)
}

#Exercise 3

my_data<- data.frame(emp_id = c (1:5),
                       emp_name = c("Rick","Dan","Michelle","Ryan","Gary"),
                       salary = c(623.3,515.2,611.0,729.0,843.25),
                       
                       start_date = as.Date(c("2012-01-01","2013-09-23","2014-11-15","2014-05-11",
                                              "2015-03-27")),
                       stringsAsFactors = FALSE)

df_expand <- function(){
  my_data$dept <<- c("IT", "Operations", "HR", "Finance", "Support")
  print(my_data)
}
df_expand()

newdata <- data.frame(emp_id = c (6:8),
                      emp_name = c("Jim","Tim","John"),
                      salary = c(578.0,722.5,632.8),
                      start_date = as.Date(c("2013-05-21","2013-07-30","2014-06-17")),
                      dept = c("IT","Operations","Fianance"),
                      stringsAsFactors = FALSE)

df1 <- rbind.data.frame(my_data, newdata, stringsAsFactors = FALSE)

# Alternative
# data$dept <- c("IT","Operations","Finance")
# data

#Exercise 4

attach(df1, name = "Exercise 4")

#detach("Exercise 4")

