loadData <-function(){
  library(sqldf)
  consumption<-read.csv.sql("household_power_consumption.txt",sep = ";", sql = 'select * from file where Date = "1/2/2007" OR Date = "2/2/2007"')
  
}
