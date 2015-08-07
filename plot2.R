## Data set loaded and unzipped by the function dataInit(), located in the file dataInit.R

setwd("~/work/ExData_Plotting1")
source("dataInit.R")

stripData <- dataInit()
png("plot2.png", width=480, height=480)
with(stripData, plot(Date, Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)"))
dev.off()
