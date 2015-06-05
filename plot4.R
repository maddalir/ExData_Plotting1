plot4 <- function(table1_f) 
{
	png(file="plot4.png",width=1000,height=1000)
	#multiple graphs
	par(mfrow=c(2,2)) # all plots on one page 
	par(tcl=-0.2) #tick marks

	plot2(table1_f,pre_par=1)

	plot(y=table1_f$Voltage ,x=table1_f$DateTimeV, col="blue",typ='l',ann=FALSE,axes=TRUE)
	title(main="Voltage",xlab="datetime",ylab="Voltage")

	plot3(table1_f,pre_par=1)

	plot(y=table1_f$Global_reactive_power,x=table1_f$DateTimeV, col="blue",typ='l',ann=FALSE,axes=TRUE)
	title(main="Reactive Power",xlab="datetime",ylab="Reactive Power")

	dev.off();
}