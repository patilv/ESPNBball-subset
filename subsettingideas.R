b12=Gamestatistics[Gamestatistics$Conference=="West Coast",]
b121213=b12[b12$Year=="2012-2013",]
b121112=b12[b12$Year=="2011-2012",]
b12=rbind(b121213,b121112)
# Let's plot histograms of some variable, say Points.Per.Game, for all teams 
ggplot(b12,aes(x=Points.Per.Game))+
  geom_histogram()+ggtitle("Histogram of Points.Per.Game for All Teams - Data Collapsed Across All Years")+ 
  facet_grid(Year~Team) + theme(legend.position="none")



ggplot(subset(subset(Gamestatistics,Conference%in% c("West Coast")),Year %in% c("2011-2012","2012-2013")),aes(x=Points.Per.Game))+
  geom_histogram()+ggtitle("Histogram of Points.Per.Game for All Teams - Data Collapsed Across All Years")+ 
  facet_grid(Team~Year) + theme(legend.position="none")
