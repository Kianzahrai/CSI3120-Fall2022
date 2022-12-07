simple_factor<-function(){
  basic_data <<- c(1,2,2,3,1,2,3,3,1,2,3,3,1)
  fdata = factor(basic_data)
  print(fdata)
}

roman_numerals <- function(){
  rdata = factor(basic_data,labels=c("I","II","III"))
  print(rdata)
}

convert_default_factor_to_roman_numerals <- function(){
  fdata = factor(basic_data)
  levels(fdata) = c('I','II','III')
  print(fdata)
}

factors_efficiency <- function(){
  mons = c("March","April","January","November","January",
          "September","October","September","November","August",
          "January","November","November","February","May","August",
          "July","December","August","August","September","November",
          "February","April")
  mons = factor(mons)
  print(mons)
  table(mons)
}

factors_ordering <- function(){
  mons = c("March","April","January","November","January",
           "September","October","September","November","August",
           "January","November","November","February","May","August",
           "July","December","August","August","September","November",
           "February","April")
  mons = factor(mons,levels=c("January","February","March",
                "April","May","June","July","August","September",
                "October","November","December"),ordered=TRUE)
  print(mons[1]<mons[2])
}


#even simple arithmetic operations will fail when using factors. 
#Since the as.numeric function will simply return the internal integer values of
#the factor, the conversion must be done using the levels attribute of the factor.
factors_example <- function(){
  fact = c(10,20,20,50,10,20,10,50,20)
  fact = factor(fact,levels=c(10,20,50),ordered=TRUE)
  #fact
  #print(mean(fact))
  #print(levels(fact))
  #print(levels(fact)[1])
  #print(levels(fact)[2])
  #print(levels(fact)[3])
  #print(levels(fact)[4])
  #print(levels(fact)[fact])
  #mean(as.numeric(levels(fact)[fact]))
}


