power_data = read.table("./household_power_consumption.txt", header = T, sep = ";",stringsAsFactors = F, dec = ".")
subsetData = power_data[power_data$Date %in% c("1/2/2007","2/2/2007"),]

##substring sub_meters
datetime = strptime(paste(subsetData$Date,subsetData$Time, sep = " "), "%d/%m/%Y %H:%M:%S")
sub_meter1 = as.numeric(subsetData$Sub_metering_1)
sub_meter2 = as.numeric(subsetData$Sub_metering_2)
sub_meter3 = as.numeric(subsetData$Sub_metering_3)

png("./plot3.png", width = 480, height = 480)
plot(datetime, sub_meter1, type = "l", ylab = "Energy sub metering", xlab = "")
lines(datetime, sub_meter2, type = "l", col = "red")
lines(datetime, sub_meter3, type = "l", col = "blue")
legend("topright", c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), lty = 1, lwd = 2.5, col = c("black","red","blue"))
dev.off()