source('plotprep.R')
makeplot1 <- function(data=loaddata()){
    png(filename='plot1.png')
    hist(x=data$Global_active_power, xlab='Global Active Power (kilowatts)', 
         main='Global Active Power', col='red', ylim=c(0,1200))
    dev.off()
}
