classes<-c("character","character",rep("numeric", 7))
hpc<-read.table("household_power_consumption.txt",header=TRUE,sep=";",na.strings = "?",colClasses=classes)
hpc<-hpc[hpc$Date=="1/2/2007" | hpc$Date=="2/2/2007" ,]
hpc$datetime<-strptime(paste(hpc$Date, hpc$Time), format="%d/%m/%Y %H:%M:%S")

png(filename = "plot3.png", width = 480, height = 480, units = "px")
with(hpc,plot(datetime,Sub_metering_1,type="n",xlab="",ylab="Energy sub metering"))
with(hpc,lines(datetime,Sub_metering_1))
with(hpc,lines(datetime,Sub_metering_2,col="red"))
with(hpc,lines(datetime,Sub_metering_3,col="blue"))
legend( "topright",legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty=c(1,1,1),col=c("black","blue","red"))
dev.off()
