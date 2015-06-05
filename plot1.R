plot1 <- function(table1_f,pre_par=0) 
{

	# Create Data
	#table1_f <- createPlotData()

	if (pre_par == 0) {
		png(file="plot1.png",width=400,height=400)
		par(mfrow=c(1,1)) # all plots on one page 
	}
	par(tcl=-0.2) #tick marks
	par(pch=22, col="red") # plotting symbol and color ;
	hist(table1_f$Global_active_power,col="red",main="Global Active Power",xlab="Global Active Power (kilowatts)")
	
	if (pre_par == 0) {
		#dev.copy(png,filename="plot1.png");
		dev.off();
	}

}