source("load_data.R")
#Creating plot2
png(filename = "plot2.png", 
    width = 480, 
    height = 480,
    units = "px",
    bg = "transparent")

plot(data$Time, 
     data$Global_active_power, 
     type = "l",
     xlab = "",
     ylab = "Global Active Power (kilowatts)",
     lwd="1")

dev.off()