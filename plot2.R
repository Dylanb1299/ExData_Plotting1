#Want to plot a line graph of global active power against time
timeaxis <- electricity$Time
global_active_power <- as.numeric(electricity$Global_active_power)

png(filename = "plot2.png")
plot(global_active_power, type = "l", ylab = "Global Active Power (kilowatts)", 
     xaxt = "n", xlab = "")
axis(side = 1, at = c(0, 1440, 2880), labels = c("Thu", "Fri", "Sat"))
dev.off()
