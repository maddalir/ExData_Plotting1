
runAll <- function() {

	source("createPlotData.R")
	source("plot1.R")
	source("plot2.R")
	source("plot3.R")
	source("plot4.R")
	data1 <- createPlotData()
	plot1(data1)
	plot2(data1)
	plot3(data1)
	plot4(data1)
}