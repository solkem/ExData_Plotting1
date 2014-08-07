source("functions.R")
loadData()

png(filename="plot3.png", width = 480, height = 480, units="px")
with(consumption,plot(datetime,Sub_metering_1, xlab="", ylab="Energy Sub Metering ", type="l"))
with(consumption,lines(datetime,Sub_metering_2,col="red"))
with(consumption,lines(datetime,Sub_metering_3,col="blue"))
legend("topright", col=c("black","red","blue"), lty=c(1),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
dev.off()
