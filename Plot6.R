 
#get data for Baltimore and LA
baltimore.and.LA<-data[data$fips %in% c("24510", "06037") & data$type=="ON-ROAD",]

##aggregate by year and fips
all.by.year.and.type<-aggregate(Emissions ~ year + fips, baltimore.and.LA, sum)
g<-ggplot(all.by.year.and.type, aes(year, Emissions, col=fips))
g<-g + geom_point() +
xlab("year") +
ylab(expression('Total PM'[2.5]*" Emissions"))
print(g)
# Save to file
dev.copy(png, file="plot5.png", height=480, width=480)
dev.off()