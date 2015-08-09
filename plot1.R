power_data = read.table("./household_power_consumption.txt", header = T, sep = ";",stringsAsFactors = F, dec = ".")
subsetData = power_data[power_data$Date %in% c("1/2/2007","2/2/2007"),]

##substring global active power
globalActivePower = as.numeric(subsetData$Global_active_power)
png("./plot1.png", width = 480, height = 480)
hist(globalActivePower, col = "Red", main = "Global Active Power", xlab = "Global Active Power (KW)")
dev.off()