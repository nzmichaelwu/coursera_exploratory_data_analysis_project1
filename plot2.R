power_data = read.table("./household_power_consumption.txt", header = T, sep = ";",stringsAsFactors = F, dec = ".")
subsetData = power_data[power_data$Date %in% c("1/2/2007","2/2/2007"),]

##substring global active power and datetime
datetime = strptime(paste(subsetData$Date,subsetData$Time, sep = " "), "%d/%m/%Y %H:%M:%S")
globalActivePower = as.numeric(subsetData$Global_active_power)
png("./plot2.png", width = 480, height = 480)
plot(datetime, globalActivePower, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")
dev.off()