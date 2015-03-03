data <- read.table('household_power_consumption.txt', header = TRUE, sep = ";", na.strings = "?")
data <- data[as.Date(data$Date, "%d/%m/%Y") >= as.Date("2007-02-01") & as.Date(data$Date, "%d/%m/%Y") <= as.Date("2007-02-02"), ]

data1 <- data[,-c(1,2)]
x <- paste(data[,1], data[,2])
data2 <- strptime(x, "%d/%m/%Y %H:%M:%S ")
data <- cbind(data2, data1)

png("plot3.png")
plot( data[,1] , data$Sub_metering_1, main = "", xlab = "", ylab = "Global Active Power (killowatts)", type = "l")
lines( data[,1] , data$Sub_metering_2, main = "", xlab = "", ylab = "Global Active Power (killowatts)", col = "red")
lines( data[,1] , data$Sub_metering_3, main = "", xlab = "", ylab = "Global Active Power (killowatts)", col = "blue")
legend("topright", lwd = 1, col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2","Sub_metering_3"))
dev.off()


