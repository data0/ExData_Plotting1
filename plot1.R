## Data set loaded and unzipped by the function dataInit(), located in the file dataInit.R

setwd("~/work/ExData_Plotting1")
source("dataInit.R")

stripData <- dataInit()
png("plot1.png", width=480, height=480)
with(stripData, hist(Global_active_power, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)"))
dev.off()
