
file1 <- readRDS("C:\\Users\\Sakina Zaveri\\Desktop\\exdata_data_NEI_data\\Source_Classification_Code.rds")
file2 <- readRDS("C:\\Users\\Sakina Zaveri\\Desktop\\exdata_data_NEI_data\\summarySCC_PM25.rds")

co <- grepl("Coal",file1$Short.Name,ignore.case = TRUE)
data <- file1[co,]

data <- file2[file2$SCC %in% data$SCC,] 

agg <- aggregate(x = data$Emissions,by = list(year = data$year),FUN = sum)

plot(agg$year,agg$x, type = "p",xlab = "Year",pch = 16,
     ylab = "Total Emission",main = "emissions from coal sources changed from 1999–2008")
dev.copy(png,"plot4.png",width = 480,height = 480)
dev.off()
