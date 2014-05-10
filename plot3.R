source('plotprep.R')
makeplot3 <- function(data=loaddata()){
    png(filename='plot3.png')
    plot(x=data$datetime, y=data$Sub_metering_1, type='n', ylab='Energy sub metering', 
         main='', xlab='')
    lines(x=data$datetime, y=data$Sub_metering_1, type='l', col='black')
    lines(x=data$datetime, y=data$Sub_metering_2, type='l', col='red')
    lines(x=data$datetime, y=data$Sub_metering_3, type='l', col='blue')
    legend(x='topright',
          legend=c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'), 
          col=c('black', 'red','blue'), lty=1)
    dev.off()
}