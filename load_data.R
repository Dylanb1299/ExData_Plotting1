library(graphics)

if (!dir.exists("./data")) {
        dir.create("./data")
}

#load the data
electricity <- read.table("./data/household_power_consumption.txt", header = TRUE, sep = ";")
