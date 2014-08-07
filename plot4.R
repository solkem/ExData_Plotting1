source("functions.R")
loadData()

png(filename="plot4.png", width = 480, height = 480, units="px")
par(mfrow = c(2,2))
with(consumption,plot(datetime,Global_active_power, xlab="datetime", ylab="Global active power", type="l"))
with(consumption,plot(datetime,Voltage, xlab="datetime", ylab="Voltage", type="l"))
with(consumption,plot(datetime,Sub_metering_1, xlab="", ylab="Energy Sub Metering ", type="l"))
with(consumption,lines(datetime,Sub_metering_2,col="red"))
with(consumption,lines(datetime,Sub_metering_3,col="blue"))
legend("topright", col=c("black","red","blue"), lty=c(1),bty="n",legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
with(consumption,plot(datetime,Global_reactive_power, xlab="datetime", ylab="Global_reactive_power", type="l"))
dev.off()

