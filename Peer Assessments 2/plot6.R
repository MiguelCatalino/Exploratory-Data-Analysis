source("load_data.R")
library(ggplot2)

mla_data <- subset(NEI, fips %in% c('24510','06037'))
motor <- SCC[grep("motor", SCC$Short.Name, ignore.case = TRUE),]
motor <- mla_data[mla_data$SCC %in% motor$SCC,]

png(
  filename = "plot6.png",
  width = 700,
  height = 480,
  units = "px"
)

g <- ggplot(motor, aes(year, Emissions, color = fips))
g + geom_line(stat = "summary", fun.y = "sum") +
  ylab(expression('Total PM'[2.5] * " Emissions")) +
  ggtitle(
    "Total Emissions From Motor Vehicle Sources in \nBaltimore City and Los Angeles \nfrom 1999 to 2008"
  ) +
  scale_colour_discrete(name = "Group", label = c("Los Angeles","Maryland"))

dev.off()