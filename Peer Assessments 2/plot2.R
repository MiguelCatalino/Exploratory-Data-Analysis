source("load_data.R")

##Get Maryland data
maryland_data <- subset(NEI, fips == '24510')
total_emissions <- aggregate(Emissions ~ year, maryland_data, sum)

png(
  filename = "plot2.png",
  width = 700,
  height = 480,
  units = "px"
)

plot(
  total_emissions,
  type = "l",
  xlab = "Year",
  col = "blue",
  las = 1,
  main = "Total Emissions in Baltimore City, Maryland from 1999 to 2008",
  ylab = expression('Total PM'[2.5] * " Emission")
)

dev.off()