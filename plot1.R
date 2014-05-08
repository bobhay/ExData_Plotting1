# R code to read and plot data for plot 1

# Navigate to the directory:
setwd("ExData_Plotting1")

# Read in the file (for the days Feb 1 and 2, 2007) :
X <- read.table("./household_power_consumption.txt", skip = 66637, nrow = 2880, sep = ";", na.strings = "?", col.names = colnames(read.table("household_power_consumption.txt", nrow = 1, header = TRUE, sep=";")))

# Build the histogram:
par(bg = "white")
hist(X$Global_active_power, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)", bg="white")

# Save the histogram as a png file:
dev.copy(png, file="plot1.png", height=480, width=480, bg="white")
dev.off()

# End
