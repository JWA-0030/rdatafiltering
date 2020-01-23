#Jesse Alsing
#6/13/2018
RAssignment1Problem1 <- function() {

	data <- read.csv("Rdata.csv")
	
	Set <- subset(data, Month == "5" & Day %% 2 == 0 & Wind > 9)
	
	print(mean(Set$Wind))
	
}

RAssignment1Problem2 <- function() {
	
	data <- read.csv("Rdata.csv")
	
	list <- data.frame(
	Ozone = c(min(data$Ozone, na.rm = TRUE), max(data$Ozone, na.rm = TRUE)),
	Solar.R = c(min(data$Solar.R, na.rm = TRUE), max(data$Solar.R, na.rm = TRUE)),
	Wind = c(min(data$Wind, na.rm = TRUE), max(data$Wind, na.rm = TRUE)),
	Temp = c(min(data$Temp, na.rm = TRUE), max(data$Temp, na.rm = TRUE)))
	
	print(list)
}