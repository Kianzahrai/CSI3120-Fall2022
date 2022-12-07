# Create the data frame.
data <- data.frame(
  emp_id = c (1:5),
  emp_name = c("Rick","Dan","Michelle","Ryan","Gary"),
  salary = c(623.3,515.2,611.0,729.0,843.25),
  
  start_date = as.Date(c("2012-01-01","2013-09-23","2014-11-15","2014-05-11",
                         "2015-03-27")),
  stringsAsFactors = FALSE
)
df_access_val <- function(){
  print(data)
  #print(x1)
}

df_attach <- function(){
  attach(data)
  #print(x1)
}

df_detach <- function(){
  detach(data)
  #print(x1)
}

df_structure <- function(){
  print(str(data))
}

df_summary <- function(){
  print(summary(data))
}

df_extract_Name.Salary <- function(){
  result <- data.frame(data$emp_name, data$salary) #Get specific columns
  print(result)
}

df_extract_FirstTwoRowsAndAllCols <- function(){
  result <- data[1:2,] #Extract first two rows, then all columns
  print(result)
}

df_extract_35Row_24Col <- function(){
  result <- data[c(3,5), c(2,4)] #Extract 3rd and 5th row with 2nd and 4th column
  print(result)
}

df_expand <- function(){
  data$dept <<- c("IT", "Operations", "HR", "Finance", "Support")
  print(data)
}



