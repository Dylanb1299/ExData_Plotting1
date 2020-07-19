#set up 2 rows and 2 columns
par(mfcol = c(2, 2))

#Want to plot plot2, plot3, and 2 others
png(filename = "plot4.png")

##plot2 code
timeaxis <- electricity$Time
global_active_power <- as.numeric(electricity$Global_active_power)

plot(global_active_power, type = "l", ylab = "Global Active Power (kilowatts)", 
     xaxt = "n", xlab = "")
axis(side = 1, at = c(0, 1440, 2880), labels = c("Thu", "Fri", "Sat"))

##plot3 code
Sub_metering_1 = electricity$Sub_metering_1
Sub_metering_2 = electricity$Sub_metering_2
Sub_metering_3 = electricity$Sub_metering_3

#Plot all the lines
plot(Sub_metering_1, type = "l", ylab = "Energy sub metering", xlab = "",
     xaxt = "n")
lines(Sub_metering_2, col = "red")
lines(Sub_metering_3, col = "blue")

#Add days axis and legend
axis(side = 1, at = c(0, 1440, 2880), labels = c("Thu", "Fri", "Sat"))
legend(x = 1440, y = 50, col = c("black", "red", "blue"), lty = 1, cex = 1,
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),    
        bty = "n", x.intersp=0.5, y.intersp = 0.15)

#plot voltage against datetime
Voltage <- electricity$Voltage
plot(Voltage, type = "l", xlab = "datetime", xaxt = "n")
axis(side = 1, at = c(0, 1440, 2880), labels = c("Thu", "Fri", "Sat"))


#plot global reactive power against datetime
Global_reactive_power <- electricity$Global_reactive_power
plot(Global_reactive_power, type = "l", xlab = "datetime", xaxt = "n")
axis(side = 1, at = c(0, 1440, 2880), labels = c("Thu", "Fri", "Sat"))

dev.off()