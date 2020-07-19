library(graphics)
library(dplyr)
library(lubridate)

if (!dir.exists("./data")) {
        dir.create("./data")
}

#load the data
electricity <- read.table("./data/household_power_consumption.txt", header = TRUE, sep = ";")

#select only the dates we care about
dates <- dmy(electricity$Date)
electricity <- electricity[dates >= ymd("2007-02-01") & dates <= ymd("2007-02-02"), ]

