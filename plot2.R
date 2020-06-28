
file1 <- readRDS("C:\\Users\\Sakina Zaveri\\Desktop\\exdata_data_NEI_data\\Source_Classification_Code.rds")
file2 <- readRDS("C:\\Users\\Sakina Zaveri\\Desktop\\exdata_data_NEI_data\\summarySCC_PM25.rds")

data <- subset(file2,fips==24510)

agg <- aggregate(x = data$Emissions,by = list(year = data$year),FUN = sum)

plot(agg$year,agg$x,col = "red",type = "p",pch=15,lwd = 2,
     main = "Baltimore City",xlab = "Year", ylab = "Total Emission")
                 
dev.copy(png,"plot2.png")
dev.off()
