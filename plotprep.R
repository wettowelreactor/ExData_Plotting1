loaddata <- function(){
    data <- read.csv(file='data/household_power_consumption.txt', sep=';',
                     na.strings='?')
    data <- data[grep('^[1-2]/2/2007', data$Date),]
    data <- transform(data, datetime=strptime(paste(data$Date, data$Time),
                                              "%d/%m/%Y %H:%M:%S"))
    data
}
