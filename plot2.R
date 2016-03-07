#plot2
plot2 <- function() {
  plot(timestamp,power$GlobalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")
  dev.copy(png, file="plot2.png", width=480, height=480)
  dev.off()
}
plot2()
