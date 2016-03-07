
#plot1
plot1 <- function() {
  hist(power$GlobalActivePower, main = paste("Global Active Power"), col="red", xlab="Global Active Power (kilowatts)")
  dev.copy(png, file="plot1.png", width=480, height=480)
  dev.off()
}
plot1()