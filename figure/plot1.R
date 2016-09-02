destfile <- "C:/Users/lenovo/Desktop/rspecdata/Exploratory Analysis/Project1/household_power_consumption.txt"
datas <- read.csv(destfile, header=TRUE, sep=";", stringsAsFactors = FALSE, dec = ".")
subdatas <- datas[datas$Date %in% c("1/2/2007","2/2/2007"), ]

globalactivePower <- as.numeric(subdatas$Global_active_power)
png("plot1.png", width = 480, height = 480)
hist(globalactivePower, col = "red", main = "Global Active Power", xlab = "GAP (kilowatts)", ylab = "Frequency")


