
file1 <- readRDS("C:\\Users\\Sakina Zaveri\\Desktop\\exdata_data_NEI_data\\Source_Classification_Code.rds")
file2 <- readRDS("C:\\Users\\Sakina Zaveri\\Desktop\\exdata_data_NEI_data\\summarySCC_PM25.rds")

LA_data <- subset(file2,fips == "06037" | fips == "24510" & type == "ON-ROAD") 
head(LA_data)

agg <- aggregate(x = LA_data$Emissions,by = list(year = LA_data$year, fips = LA_data$fips)
                 ,FUN = sum)

library(ggplot2)
qplot(year,x,data = agg, xlab = "Year",color = fips,geom="line",
     ylab = "Total Emission",main = "Baltimore(24150) And Los-Angeles(06037) City")


dev.copy(png,"plot6.png",width = 480,height = 480)
dev.off()
