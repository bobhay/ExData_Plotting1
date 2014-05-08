# Graph 2

# Read in the file (for the days Feb 1 and 2, 2007) :
X <- read.table("household_power_consumption.txt", skip = 66637, nrow = 2880, sep = ";", na.strings = "?", col.names = colnames(read.table("household_power_consumption.txt", nrow = 1, header = TRUE, sep=";")))

# Process the date and time:
ptime <- strptime(paste(X$Date, X$Time), format='%d/%m/%Y %H:%M:%S')

# Build the graph:
par(bg = "white")
plot(ptime, X$Global_active_power, type="n", main="", xlab="", ylab="Global Active Power (kilowatts)")
lines(ptime, X$Global_active_power)

# Save the graphics device as a png file:
dev.copy(png, file="plot2.png", height=480, width=480, bg="white")
dev.off()

# End

