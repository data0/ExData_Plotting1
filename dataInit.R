## dataInit is to load the data set, unzip, filter required subset and return new tidy data set
## I hope that this fifth R file will not violate requirements of the project :)

require(dplyr)

dataInit <- function(){
  #setwd("~/work/ExData_Plotting1")
  if(!file.exists("household_power_consumption.txt")){
    fileURL <- "https://d396qusza40orc.cloudfront.net/exdata/data/household_power_consumption.zip"
    download.file(fileURL, destfile="household_power_consumption.zip", method="curl", quiet="True")
    unzip("household_power_consumption.zip")
    file.remove("household_power_consumption.zip")
  }

  data<-read.table("./household_power_consumption.txt", sep=";", na.strings = "?", header = TRUE, colClasses = c("character", "character", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric"))

  stripData <- filter(data, Date == "1/2/2007" | Date == "2/2/2007") %>%
    mutate(Date = paste(Date, Time)) %>%
    mutate(Date = as.POSIXct(strptime(Date,"%d/%m/%Y %T"))) %>%
    select(-Time) %>%
    arrange(desc(Date))
  rm(data)
  return(stripData)
}