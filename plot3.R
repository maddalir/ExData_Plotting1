plot3 <- function(table1_f,pre_par=0) 
{
	if (pre_par == 0) {
		png(file="plot3.png",width=400,height=400)
		par(mfrow=c(1,1)) # all plots on one page 
	}
	par(pch=22, col="red") # plotting symbol and color ;
	par(tcl=-0.2) #tick marks

	plot(y=table1_f$Sub_metering_3 ,x=table1_f$DateTimeV, ylim=range(0,30),col="green",typ='l',ann=FALSE,axes=TRUE)
	par(new=TRUE)
	plot(y=table1_f$Sub_metering_2 ,x=table1_f$DateTimeV, ylim=range(0,30),col="red",typ='l',ann=FALSE,axes=FALSE)
	par(new=TRUE)
	plot(y=table1_f$Sub_metering_1 ,x=table1_f$DateTimeV, col="black",typ='l',ann=FALSE,axes=FALSE)
	title(main="Energy Usage - 3",xlab="WeekDay",ylab="Energy Sub Metering")
	legend("topright",legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),col=c("black", "red", "blue"),pch=c(21,19,19),lty=c(1,1,1),lwd=c(1,1,1),title="Legend",cex=.70 )

	if (pre_par == 0) {
		#dev.copy(png,filename="plot3.png");
		dev.off();
	}

}