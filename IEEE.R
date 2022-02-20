#Setting the working directory
setwd(".\\Photos")

#Import the required packages
library(raster)
library(rgdal)
library(RColorBrewer)

#Setting the color palette for spplot
my.palette <- brewer.pal(n = 8, name = "YlGn")

#Plotting the NDVI graphs with the same program for different country parks
ndvianalysis <- function(droneimage, countrypark){
  
#Importing the near-infrared (NIR) band of the drone image of the country park
  NIR = raster(droneimage, band = 1)

#Importing the red (r) band of the drone image of country park
  red = raster(droneimage, band = 2)

#Calculating the NDVI value of each pixel in the drone image
  ndvi = (NIR-red)/(NIR+red)

#Filtering out the rock, sand and water
  ndvi[ndvi < 0.2] = NA
  
#Plotting the NDVI frequency graph
  hist(ndvi, main= countrypark)

#Plotting the NDVI graphs
  plot(ndvi, main = countrypark)
  
#Plotting the NDVI graphs(spplot)  
  print(spplot(ndvi, main = countrypark, col.regions = my.palette, cuts = 7))
  
  return(summary(ndvi)[3])
}


#Importing the median NDVI of different country parks into an array variable
Aberdeenmedian<-ndvianalysis("Aberdeen.jpg", "Aberdeen")
TaiTammedian<-ndvianalysis("Tai Tam.jpg", "Tai Tam")
PokFuLammedian<-ndvianalysis("Pok Fu Lam.jpg", "Pok Fu Lam")
ShekOmedian<-ndvianalysis("Shek O.jpg", "Shek O")
LungFuShanmedian<-ndvianalysis("Lung Fu Shan.jpg", "Lung Fu Shan")
ClearWaterBaymedian<-ndvianalysis("Clear Water Bay.jpg", "Clear Water Bay")
KamShanmedian<-ndvianalysis("Kam Shan.jpg", "Kam Shan")
LionRockmedian<-ndvianalysis("Lion Rock.jpg", "Lion Rock")
PatSinLengmedian<-ndvianalysis("Pat Sin Leng.jpg", "Pat Sin Leng")
PloverCovemedian<-ndvianalysis("Plover Cove.jpg", "Plover Cove")
TaiLamChungmedian<-ndvianalysis("Tai Lam Chung.jpg", "Tai Lam Chung")
LantauPeakmedian<-ndvianalysis("Lantau Peak.jpg", "Lantau Peak")
SunsetPeakmedian<-ndvianalysis("Sunset Peak.jpg", "Sunset Peak")



#Importing the median NDVI of different country parks into an array variable
medians <- c(Aberdeenmedian, TaiTammedian, PokFuLammedian, ShekOmedian, LungFuShanmedian, ClearWaterBaymedian, KamShanmedian, LionRockmedian, PatSinLengmedian, PloverCovemedian, LantauPeakmedian, SunsetPeakmedian)
#Assigning the list of country park names to be put below each bar
countryParks <- c("Aberdeen", "Tai Tam", "Pok Fu Lam", "Shek O", "Lung Fu Shan", "Clear Water Bay", "Kam Shan", "Lion Rock", "Pat Sin Leng", "Plover Cove", "Lantau Peak", "Sunset Peak")


#Plotting the barchart of the median NDVI value of different country parks
barplot(medians, horiz=T, las=1 ,names.arg= countryParks, main = 'medians')
