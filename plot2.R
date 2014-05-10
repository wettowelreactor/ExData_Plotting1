source('plotprep.R')
makeplot2 <- function(data=loaddata()){
    png(filename='plot2.png')
    plot(x=data$datetime, y=data$Global_active_power, type='n',
         ylab='Global Active Power (kilowatts)', 
         main='', xlab='')
    lines(x=data$datetime, y=data$Global_active_power, type='l')
    dev.off()
}
