
plot2 <- function(table1_f,pre_par=0) 
{

	if (pre_par == 0) {
		png(file="plot2.png",width=400,height=400)
		par(mfrow=c(1,1)) # all plots on one page 
	}
	par(pch=22, col="black") # plotting symbol and color ;
	par(tcl=-0.2) #tick marks
	plot(y=table1_f$Global_active_power ,x=table1_f$DateTimeV, col="blue",typ='l',ann=FALSE,axes=TRUE)
	#plot(y=table1_f$Sub_metering_1 ,x=table1_f$DateTimeV, col="blue",typ='l',ann=FALSE,axes=TRUE)
	title(main="Chart 2",xlab="WeekDay",ylab="Global Active Power (kilowatts)")

	if (pre_par == 0) {
		#dev.copy(png,filename="plot2.png");
		dev.off();
	}


}
