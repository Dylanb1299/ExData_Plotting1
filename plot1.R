#Want to plot a histogram of global active power

global_active_power = as.numeric(electricity$Global_active_power)

total_freq = length(global_active_power)

png(filename = "plot1.png")

hist(global_active_power, col = 'red', main = "Global Active Power",
     xlab = "Global Active Power (kilowatts)", ylab = "Frequency",
     xlim = c(0,8), ylim = c(0, 1), freq = FALSE,
     yaxt  = "n", xaxp = c(0, 6, 3))

tickset <- seq(0, 1, 0.2)
axis(side = 2, at = tickset, labels = as.character(1000 * tickset))

dev.off()
