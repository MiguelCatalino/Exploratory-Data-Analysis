source("load_data.R")
#Creagin plot4
png(filename = "plot4.png", 
    width = 480, 
    height = 480,
    units = "px", 
    bg = "transparent")

#2 Row 2 Columns
par(mfrow = c(2, 2))

## Top-left
plot(data$Time, 
     data$Global_active_power, 
     type = "l",
     xlab = "", 
     ylab = "Global Active Power"
     )

## Top-right
plot(data$Time, 
     data$Voltage,
     type = "l",
     xlab = "datetime", 
     ylab = "Voltage"
     )

## Bottom-left
plot(data$Time, 
     data$Sub_metering_1, 
     type = "l",
     col = "black",
     xlab = "", 
     ylab = "Energy sub metering"
     )

lines(data$Time, 
      data$Sub_metering_2, 
      col = "red")
lines(data$Time, 
      data$Sub_metering_3, 
      col = "blue")

# Remove the border of legend here.
legend("topright", 
       bty = "n",
       col = c("black", "red", "blue"),
       c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       lwd = 1)

## Bottom-right
plot(data$Time, 
     data$Global_reactive_power, 
     type = "l",
     col = "black",
     xlab = "datetime", 
     ylab = "Global_reactive_power")

dev.off()