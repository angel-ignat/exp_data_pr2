#find data for baltimore and emission type =="ON-ROAD"
baltimore=data[data$fip=="24510"  & data.type=="ON-ROAD",]
all.by.year<-aggregate(Emissions ~ year, baltimore, sum)

library(ggplot2)
g<-ggplot(baltimore.by.year, aes(year, Emissions))
g<-g + geom_point() +
xlab("year")+
ylab=expression('toalal PM'[2.5]*' emission in Baltimore'))

print(g)
# Save to file
dev.copy(png, file="plot5.png", height=480, width=480)
dev.off()