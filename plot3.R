# Graph 3

# Read in the file (for the days Feb 1 and 2, 2007) :
X <- read.table("household_power_consumption.txt", skip = 66637, nrow = 2880, sep = ";", na.strings = "?", col.names = colnames(read.table("household_power_consumption.txt", nrow = 1, header = TRUE, sep=";")))

# Process the date and time:
ptime <- strptime(paste(X$Date, X$Time), format='%d/%m/%Y %H:%M:%S')

# Build the graph:
par(bg = "white")
plot(ptime, X$Sub_metering_1, type="n", main="", xlab="", ylab="Energy sub metering", bg="white")
lines(ptime, X$Sub_metering_1, col="black")
lines(ptime, X$Sub_metering_2, col="red")
lines(ptime, X$Sub_metering_3, col="blue")

legend("topright", lty=1, lwd=2, cex=0.8, col=c("black", "red", "blue"), legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

# Save the graphics device as a png file:
dev.copy(png, file="plot3.png", height=480, width=480)
dev.off()

# End

