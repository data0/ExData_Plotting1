## Data set loaded and unzipped by the function dataInit(), located in the file dataInit.R

setwd("~/work/ExData_Plotting1")
source("dataInit.R")

stripData <- dataInit()
png("plot3.png", width=480, height=480)
with(stripData, {
  plot(Date, Sub_metering_1, type="l", xlab="", ylab="Energy sub metering")
  lines(Date, Sub_metering_2, type="l", col="red")
  lines(Date, Sub_metering_3, type="l", col="blue")
  legend("topright", c(names(stripData)[6:8]), lty=1, lwd=1.5, col=c("black", "red", "blue")) 
})
dev.off()
