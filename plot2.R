classes<-c("character","character",rep("numeric", 7))
hpc<-read.table("household_power_consumption.txt",header=TRUE,sep=";",na.strings = "?",colClasses=classes)
hpc<-hpc[hpc$Date=="1/2/2007" | hpc$Date=="2/2/2007" ,]
hpc$datetime<-strptime(paste(hpc$Date, hpc$Time), format="%d/%m/%Y %H:%M:%S")

png(filename = "plot2.png", width = 480, height = 480, units = "px")
with(hpc,plot(datetime,Global_active_power,type="n",xlab="",ylab="Global Active Power (kilowatts)"))
with(hpc,lines(datetime,Global_active_power))
dev.off()
