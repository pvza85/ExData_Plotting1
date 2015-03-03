setwd('E:/MyWorkSpace/DataScience/Course/ExploratoryDataAnalysis')
data = read.table('household_power_consumption.txt', header = TRUE, sep = ";", na.strings = "?")
data <- data[as.Date(data$Date, "%d/%m/%Y") >= as.Date("2007-02-01") & as.Date(data$Date, "%d/%m/%Y") <= as.Date("2007-02-02"), ]