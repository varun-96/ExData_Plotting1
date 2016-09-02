destfile <- "C:/Users/lenovo/Desktop/rspecdata/Exploratory Analysis/Project1/household_power_consumption.txt"
datas <- read.table(destfile, header=TRUE, sep=";", stringsAsFactors = FALSE, dec = ".")
subdatas <- datas[datas$Date %in% c("1/2/2007","2/2/2007"), ]

GlobalActivePower <- as.numeric(subdatas$Global_active_power)
datetime <- strptime(paste(subdatas$Date, subdatas$Time, sep = " "), "%d/%m/%Y %H:%M:%S")
png("plot2.png",width = 480,height = 480)
plot(datetime, GlobalActivePower, type = "l", xlab = "", ylab = "GAP(kilowatts)")
dev.off()






