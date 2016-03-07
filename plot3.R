
#plot3
plot3 <- function() {
  plot(timestamp,power$SubMetering1, type="l", xlab="", ylab="Energy sub metering")
  lines(timestamp,power$SubMetering2,col="red")
  lines(timestamp,power$SubMetering3,col="blue")
  legend("topright", col=c("black","red","blue"), c("SubMetering1  ","SubMetering2  ", "SubMetering3  "),lty=c(1,1), lwd=c(1,1))
  dev.copy(png, file="plot3.png", width=480, height=480)
  dev.off()
}
plot3()
