#Want to plot line graphs of all the Sub_metering's against time

Sub_metering_1 = electricity$Sub_metering_1
Sub_metering_2 = electricity$Sub_metering_2
Sub_metering_3 = electricity$Sub_metering_3

png(filename = "plot3.png")

#Plot all the lines
plot(Sub_metering_1, type = "l", ylab = "Energy sub metering", xlab = "",
     xaxt = "n")
lines(Sub_metering_2, col = "red")
lines(Sub_metering_3, col = "blue")

#Add days axis and legend
axis(side = 1, at = c(0, 1440, 2880), labels = c("Thu", "Fri", "Sat"))
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       col = c("black", "red", "blue"), lty = 1)

dev.off()
