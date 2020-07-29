setwd("/Users/pierrecontenssou/desktop/csv")
data<-read.csv("test.csv",sep=";")

library(leaflet)

my_map <- data %>%
  leaflet() %>%
  addTiles() %>%
  setView(lng = -85, lat = 40, zoom = 5) %>%
  
  addMarkers(popup = "Test", 
             lng = data$Lat, 
             lat = data$Long)%>% 
  addCircles(weight=1,radius=sqrt(data$HomicieRate)*30000)

my_map
