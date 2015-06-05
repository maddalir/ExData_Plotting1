# Read Data

createPlotData <- function() {
	table1 <-read.table("household_power_consumption.txt",sep=";",na.strings="?",header=TRUE)

	# Create Date
	table1$DateD <- as.Date(table1$Date,format="%d/%m/%Y")

	# Filtered data set
	table1_f  <- table1[(table1$DateD >= as.Date('2007-02-01') & table1$DateD <= as.Date('2007-02-02')), ]

	#table1_f$Weekday <- weekdays(table1_f$DateD)
	#table1_f$WeekdayF <- as.factor(table1_f$Weekday)

	# Create Posix Date
	table1_f$DateTime <-  paste(table1_f$Date,table1_f$Time)
	table1_f$DateTimeV <- strptime(table1_f$DateTime,"%d/%m/%Y %H:%M:%S")
	
	table1_f
}