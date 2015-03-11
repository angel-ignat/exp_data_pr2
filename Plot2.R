#data is contained in the data variable
baltimore<-data[data$fips=="24510",]
all.by.year<-aggregate(Emissions ~ year, baltimor, sum)
plot(all.by.year$year, all.by.year$Emissions, xlab="year", ylab=expression('toalal PM'[2.5]*' emission in Baltimore'))
# Save to file
dev.copy(png, file="plot2.png", height=480, width=480)
dev.off()