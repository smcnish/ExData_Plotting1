
#plot4
plot4 <- function() {
  par(mfrow=c(2,2))
  
  ##first
  plot(timestamp, power$GlobalActivePower, type="l", xlab="", ylab="Global Active Power")
  
  ##second
  plot(timestamp,power$Voltage, type="l", xlab="datetime", ylab="Voltage")
  
  ##third
  plot(timestamp,power$SubMetering1, type="l", xlab="", ylab="Energy sub metering")
  lines(timestamp,power$SubMetering2,col="red")
  lines(timestamp,power$SubMetering3,col="blue")
  legend("topright", col=c("black","red","blue"), c("SubMetering1  ","SubMetering2  ", "SubMetering3  "),lty=c(1,1), bty="n", cex=.5) 
  
  
  #fourth
  plot(timestamp,power$GlobalReactivePower, type="l", xlab="datetime", ylab="GlobalReactivePower")
  
  #all
  dev.copy(png, file="plot4.png", width=480, height=480)
  dev.off()
}
plot4()