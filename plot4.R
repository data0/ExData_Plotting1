## Data set loaded and unzipped by the function dataInit(), located in the file dataInit.R

setwd("~/work/ExData_Plotting1")
source("dataInit.R")

stripData <- dataInit()
png("plot4.png", width=480, height=480)
par(mfrow = c(2, 2))
with(stripData, {
  plot(Date, Global_active_power, type="l", xlab="", ylab="Global Active Power")
  plot(Date, Voltage, type="l", xlab="datetime", ylab="Voltage")
  plot(Date, Sub_metering_1, type="l", xlab="", ylab="Energy sub metering")
  lines(Date, Sub_metering_2, type="l", col="red")
  lines(Date, Sub_metering_3, type="l", col="blue")
  legend("topright", c(names(stripData)[6:8]), col=c("black", "red", "blue"), lty=1, bty="n")
  plot(Date, Global_reactive_power, type="l", xlab="datetime", ylab="Global_reactive_power")
})
dev.off()
