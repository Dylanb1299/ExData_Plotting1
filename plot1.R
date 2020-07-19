#Want to plot a histogram of global active power

global_active_power = as.numeric(electricity$Global_active_power)

png(filename = "plot1.png")

hist(global_active_power, col = 'red', main = "Global Active Power",
     xlab = "Global Active Power (kilowatts)", ylab = "Frequency",
     xlim = c(0,8), xaxp = c(0, 6, 3))

setticks <- seq(0, 12, 2)
axis(side = 2, at = 100 * setticks, labels = TRUE)
dev.off()
