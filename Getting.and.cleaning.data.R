
#read in data from working directory
power <- read.table("household_power_consumption.txt", header=T, sep=";")

#subset dates we want

power<-power[power$Date=='1/2/2007' | power$Date=='2/2/2007',]

#clean up column names
cols<-c('Date','Time','GlobalActivePower','GlobalReactivePower','Voltage','GlobalIntensity', 
          'SubMetering1','SubMetering2','SubMetering3') 
colnames(power)<-cols 

power$GlobalActivePower <- as.numeric(as.character(power$GlobalActivePower))
timestamp <- strptime(paste(power$Date, power$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
#power <- transform(power, timestamp=as.POSIXct(paste(Date, Time)), "%d/%m/%Y %H:%M:%S")
power$Voltage <- as.numeric(as.character(power$Voltage))

power$SubMetering1 <- as.numeric(as.character(power$SubMetering1))
power$SubMetering2 <- as.numeric(as.character(power$SubMetering2))
power$SubMetering3 <- as.numeric(as.character(power$SubMetering3))
