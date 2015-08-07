

source("load_data.R")
##Total emissions by years
total_emissions <- aggregate(Emissions ~ year, NEI, sum)

png(
  filename = "plot1.png",
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
  main = "Total Emissions from 1999 to 2008",
  ylab = expression('Total PM'[2.5] * " Emissions")
)

dev.off()