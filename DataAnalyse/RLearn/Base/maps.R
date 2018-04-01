library(maps)
map("state",interior=FALSE)							#������ͼ���ڲ������				
map("state",boundary=FALSE,col="green",add=TRUE)		      #������ͼ�����ڲ����ӱ߽�
map("world",fill=TRUE,col=heat.colors(10))				#�����ͼ������������ɫ�������

map("state")
map("world")									#�����ͼ��������������ͼ���ڲ����ӱ߽�

xlim<-c(-171.738281,-56.601563)
ylim<-c(12.039321,71.856229)
map("world",col="red",fill=TRUE,bg="white",
	lwd=5,xlim=xlim,ylim=ylim)						#��������ʹ�ý��㼯���������ܱߣ������������ɫ

library(maps)
library(geosphere)
lat<-39.164141
lon<--121.64062
latMe<--45.21300
lonMe<--68.906250
inter<-gcIntermediate(c(lon,lat),c(lonMe,latMe),
	n=50,addStartEnd=TRUE)
map("world")
lines(inter,lwd=5,col="red")							#�������ͼ���ض�����������֮���������

lat2=-29.954835
lon2=-98.701172
inter2<-gcIntermediate(c(lon2,lat2),c(lonMe,latMe),
face
	n=50,addStartEnd=TRUE)
lines(inter2,lwd=3,col="blue")						#����������

#���ƶ�����ϵ���罻���ݿ��ӻ�
#http://flowingdata.com/2011/05/11/how-to-map-connections-with-great-circles/
library(maps)
library(geosphere)
airports<-read.csv("http://datasets.flowingdata.com/tuts/maparcs/airports.csv",header=TRUE)
flights<-read.csv("http://datasets.flowingdata.com/tuts/maparcs/flights.csv",header=TRUE,as.is=TRUE)
fsub<-flights[flights$airline=="AA",]
xlim<-c(min(airports$long),max(airports$long))
ylim<-c(min(airports$lat),max(airports$lat))
map("world",col="#f2f2f2",fill=TRUE,bg="white",lwd=0.05,xlim=xlim,ylim=ylim)
for(j in 1:length(fsub$airline)){
	air1<-airports[airports$iata == fsub[j,]$airport1,]
	air2<-airports[airports$iata == fsub[j,]$airport2,]
	inter2<-gcIntermediate(c(air1[1,]$long,air1[1,]$lat),c(air2[1,]$long,air2[1,]$lat),
	n=50,addStartEnd=TRUE)
	lines(inter2,lwd=0.1,col="blue")
}

