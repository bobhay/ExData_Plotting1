# Graph 4

# Read in the file (for the days Feb 1 and 2, 2007) :
X <- read.table("household_power_consumption.txt", skip = 66637, nrow = 2880, sep = ";", na.strings = "?", col.names = colnames(read.table("household_power_consumption.txt", nrow = 1, header = TRUE, sep=";")))

# Process the date and time:
ptime <- strptime(paste(X$Date, X$Time), format='%d/%m/%Y %H:%M:%S')

# Set 2 x 2 parameter:
par(mfrow = c(2, 2), bg = "white", mar = c(3, 3, 2, 1), oma = c(0, 0, 2, 0))


# Build graph 4.1:
plot(ptime, X$Global_active_power, col="dark grey", type="n", main="", xlab="", ylab="Global Active Power")
lines(ptime, X$Global_active_power)

# Build graph 4.2:
plot(ptime, X$Voltage, type="n", main="", xlab="datetime", ylab="Voltage")
lines(ptime, X$Voltage)

# Build graph 4.3:
plot(ptime, X$Sub_metering_1, type="n", main="", xlab="", ylab="Energy sub metering", bg="white")
lines(ptime, X$Sub_metering_1, col="black")
lines(ptime, X$Sub_metering_2, col="red")
lines(ptime, X$Sub_metering_3, col="blue")
# legend("topright", lty=1, lwd=2, col=c("black", "red", "blue"), legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

# Build graph 4.4:
plot(ptime, X$Global_reactive_power, type="n", main="", xlab="datatime", ylab="Global_reactive_power")
lines(ptime, X$Global_active_power)

# Save the graphics device as a png file:
dev.copy(png, file="plot4.png", height=800, width=800)
dev.off()

# End

