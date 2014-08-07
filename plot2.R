source("functions.R")
loadData()

DateTime<-with(consumption, paste(Date,Time))
consumption<-data.frame(DateTime,consumption[,c(3,4,5,6,7,8,9)])
datetime<-strptime(consumption[,1],format="%d/%m/%Y %H:%M:%S")
consumption<-data.frame(datetime,consumption[,c(2,3,4,5,6,7,8)])

png(filename="plot2.png", width = 480, height = 480, units="px")
with(consumption,plot(datetime,Global_active_power, xlab="", ylab="Global Active Power (kilowatts) ", type="l"))