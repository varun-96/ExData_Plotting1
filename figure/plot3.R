destfile <- "C:/Users/lenovo/Desktop/rspecdata/Exploratory Analysis/Project1/household_power_consumption.txt"
datas <- read.table(destfile, header=TRUE, sep=";", stringsAsFactors = FALSE, dec = ".")
subdatas <- datas[datas$Date %in% c("1/2/2007","2/2/2007"), ]


datetime <- strptime(paste(subdatas$Date, subdatas$Time, sep = " "), "%d/%m/%Y %H:%M:%S")
subMetering1 <- as.numeric(subdatas$Sub_metering_1)
subMetering2 <- as.numeric(subdatas$Sub_metering_2)
subMetering3 <- as.numeric(subdatas$Sub_metering_3)


png("plot3.png",width = 480,height = 480)

plot(datetime, subMetering1, type = "l", xlab = "", ylab = "Energy Metering")
lines(datetime, subMetering2, type = "l", col = "red")
lines(datetime, subMetering3, type = "l", col = "blue")
legend("topright", c("subMetering1", "subMetering2", "subMetering3"), lty = 1, lwd = 2.5, col = c("black", "red", "blue"))
dev.off()




