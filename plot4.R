source('plotprep.R')
makeplot4 <- function(data=loaddata()){
    png(filename='plot4.png')
    par(mfcol=c(2,2))
    
    #Plot 1
    plot(x=data$datetime, y=data$Global_active_power, type='n',
         ylab='Global Active Power', 
         main='', xlab='')
    lines(x=data$datetime, y=data$Global_active_power, type='l')
    
    #Plot 2
    plot(x=data$datetime, y=data$Sub_metering_1, type='n', ylab='Energy sub metering', 
         main='', xlab='')
    lines(x=data$datetime, y=data$Sub_metering_1, type='l', col='black')
    lines(x=data$datetime, y=data$Sub_metering_2, type='l', col='red')
    lines(x=data$datetime, y=data$Sub_metering_3, type='l', col='blue')
    legend(x='topright',
           legend=c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'), 
           col=c('black', 'red','blue'), lty=1, bty='n')
    
    #Plot 3
    plot(x=data$datetime, y=data$Voltage, type='n',
         ylab='Voltage', 
         main='', xlab='datetime')
    lines(x=data$datetime, y=data$Voltage, type='l')
    
    #Plot 4
    plot(x=data$datetime, y=data$Global_reactive_power, type='n',
         ylab='Global_reactive_power', 
         main='', xlab='datetime')
    lines(x=data$datetime, y=data$Global_reactive_power, type='l')
    dev.off()
}