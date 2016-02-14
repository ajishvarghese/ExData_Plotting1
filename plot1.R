classes<-c("character","character",rep("numeric", 7))
hpc<-read.table("household_power_consumption.txt",header=TRUE,sep=";",na.strings = "?",colClasses=classes)
hpc<-hpc[hpc$Date=="1/2/2007" | hpc$Date=="2/2/2007" ,]
png(filename = "plot1.png", width = 480, height = 480, units = "px")
hist(hpc$Global_active_power, col="red", xlab="Global Active Power (kilowatts)", main="Global Active Power")
dev.off()