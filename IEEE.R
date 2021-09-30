#Setting the working directory
setwd(".\\Photos")

#Import the required packages
library(raster)
library(rgdal)
library(RColorBrewer)



#Setting the color palette for spplot
my.palette <- brewer.pal(n = 8, name = "YlGn")

#Plotting the NDVI graphs with the same program for different country parks

#Plotting the graphs for Aberdeen Country Park
#Importing the near-infrared (NIR) band of the drone image of Aberdeen Country Park
AberdeenNIR = raster("Aberdeen.jpg", band = 1)

#Importing the red (r) band of the drone image of Aberdeen Country Park
Aberdeenr = raster("Aberdeen.jpg", band = 2)

#Calculating the NDVI value of each pixel in the drone image
Aberdeenndvi = (AberdeenNIR-Aberdeenr)/(AberdeenNIR+Aberdeenr)

#Filtering out the rock, sand and water
Aberdeenndvi[Aberdeenndvi < 0.2] = NA

#Plotting the NDVI graphs
plot(Aberdeenndvi, main = 'Aberdeen')
spplot(Aberdeenndvi, main = 'Aberdeen', col.regions = my.palette, cuts = 7)

#Plotting the NDVI frequency graph of the drone image
hist(Aberdeenndvi, main = 'Aberdeen')



#Plotting the graphs for Tai Tam Country Park
TaiTamNIR = raster("Tai Tam.jpg", band = 1)
TaiTamr = raster("Tai Tam.jpg", band = 2)
TaiTamndvi = (TaiTamNIR-TaiTamr)/(TaiTamNIR+TaiTamr)
TaiTamndvi[TaiTamndvi < 0.2] = NA
plot(TaiTamndvi, main = 'Tai Tam')
spplot(TaiTamndvi, main = 'Tai Tam', col.regions = my.palette, cuts = 7)
hist(TaiTamndvi, main = 'Tai Tam')



#Plotting the graphs for Pok Fu Lam Country Park
PokFuLamNIR = raster("Pok Fu Lam.jpg", band = 1)
PokFuLamr = raster("Pok Fu Lam.jpg", band = 2)
PokFuLamndvi = (PokFuLamNIR-PokFuLamr)/(PokFuLamNIR+PokFuLamr)
PokFuLamndvi[PokFuLamndvi < 0.2] = NA
plot(PokFuLamndvi, main = 'Pok Fu Lam')
spplot(PokFuLamndvi, main = 'Pok Fu Lam', col.regions = my.palette, cuts = 7)
hist(PokFuLamndvi, main = 'Pok Fu Lam')



#Plotting the graphs for Shek O Country Park
ShekONIR = raster("Shek O.jpg", band = 1)
ShekOr = raster("Shek O.jpg", band = 2)
ShekOndvi = (ShekONIR-ShekOr)/(ShekONIR+ShekOr)
ShekOndvi[ShekOndvi < 0.2] = NA
plot(ShekOndvi, main = 'Shek O')
spplot(ShekOndvi, main = 'Shek O', col.regions = my.palette, cuts = 7)
hist(ShekOndvi, main = 'Shek O')



#Plotting the graphs for Lung Fu Shan Country Park
LungFuShanNIR = raster("Lung Fu Shan.jpg", band = 1)
LungFuShanr = raster("Lung Fu Shan.jpg", band = 2)
LungFuShanndvi = (LungFuShanNIR-LungFuShanr)/(LungFuShanNIR+LungFuShanr)
LungFuShanndvi[LungFuShanndvi < 0.2] = NA
plot(LungFuShanndvi, main = 'Lung Fu Shan')
spplot(LungFuShanndvi, main = 'Lung Fu Shan', col.regions = my.palette, cuts = 7)
hist(LungFuShanndvi, main = 'Lung Fu Shan')



#Plotting the graphs for Clear Water Bay Country Park
ClearWaterBayNIR = raster("Clear Water Bay.jpg", band = 1)
ClearWaterBayr = raster("Clear Water Bay.jpg", band = 2)
ClearWaterBayndvi = (ClearWaterBayNIR-ClearWaterBayr)/(ClearWaterBayNIR+ClearWaterBayr)
ClearWaterBayndvi[ClearWaterBayndvi < 0.2] = NA
plot(ClearWaterBayndvi, main = 'Clear Water Bay')
spplot(ClearWaterBayndvi, main = 'Clear Water Bay', col.regions = my.palette, cuts = 7)
hist(ClearWaterBayndvi, main = 'Clear Water Bay')



#Plotting the graphs for Kam Shan Country Park
KamShanNIR = raster("Kam Shan.jpg", band = 1)
KamShanr = raster("Kam Shan.jpg", band = 2)
KamShanndvi = (KamShanNIR-KamShanr)/(KamShanNIR+KamShanr)
KamShanndvi[KamShanndvi < 0.2] = NA
plot(KamShanndvi, main = 'Kam Shan')
spplot(KamShanndvi, main = 'Kam Shan', col.regions = my.palette, cuts = 7)
hist(KamShanndvi, main = 'Kam Shan')



#Plotting the graphs for Lion Rock Country Park
LionRockNIR = raster("Lion Rock.jpg", band = 1)
LionRockr = raster("Lion Rock.jpg", band = 2)
LionRockndvi = (LionRockNIR-LionRockr)/(LionRockNIR+LionRockr)
LionRockndvi[LionRockndvi < 0.2] = NA
plot(LionRockndvi, main = 'Lion Rock')
spplot(LionRockndvi, main = 'Lion Rock', col.regions = my.palette, cuts = 7)
hist(LionRockndvi, main = 'Lion Rock')



#Plotting the graphs for Pat Sin Leng Country Park
PatSinLengNIR = raster("Pat Sin Leng.jpg", band = 1)
PatSinLengr = raster("Pat Sin Leng.jpg", band = 2)
PatSinLengndvi = (PatSinLengNIR-PatSinLengr)/(PatSinLengNIR+PatSinLengr)
PatSinLengndvi[PatSinLengndvi < 0.2] = NA
plot(PatSinLengndvi, main = 'Pat Sin Leng')
spplot(PatSinLengndvi, main = 'Pat Sin Leng', col.regions = my.palette, cuts = 7)
hist(PatSinLengndvi, main = 'Pat Sin Leng')



#Plotting the graphs for Plover Cove Country Park
PloverCoveNIR = raster("Plover Cove.jpg", band = 1)
PloverCover = raster("Plover Cove.jpg", band = 2)
PloverCovendvi = (PloverCoveNIR-PloverCover)/(PloverCoveNIR+PloverCover)
PloverCovendvi[PloverCovendvi < 0.2] = NA
plot(PloverCovendvi, main = 'Plover Cove')
spplot(PloverCovendvi, main = 'Plover Cove', col.regions = my.palette, cuts = 7)
hist(PloverCovendvi, main = 'Plover Cove')


#Plotting the graphs for Tai Lam Chung Country Park
TaiLamChungNIR = raster("Tai Lam Chung.jpg", band = 1)
TaiLamChungr = raster("Tai Lam Chung.jpg", band = 2)
TaiLamChungndvi = (TaiLamChungNIR-TaiLamChungr)/(TaiLamChungNIR+TaiLamChungr)
TaiLamChungndvi[TaiLamChungndvi < 0.2] = NA
plot(TaiLamChungndvi, main = 'Tai Lam Chung')
spplot(TaiLamChungndvi, main = 'Tai Lam Chung', col.regions = my.palette, cuts = 7)
hist(TaiLamChungndvi, main = 'Tai Lam Chung')


#Plotting the graphs for Lantau Peak Country Park
LantauPeakNIR = raster("Lantau Peak.jpg", band = 1)
LantauPeakr = raster("Lantau Peak.jpg", band = 2)
LantauPeakndvi = (LantauPeakNIR-LantauPeakr)/(LantauPeakNIR+LantauPeakr)
LantauPeakndvi[LantauPeakndvi < 0.2] = NA
plot(LantauPeakndvi, main = 'Lantau Peak')
spplot(LantauPeakndvi, main = 'Lantau Peak', col.regions = my.palette, cuts = 7)
hist(LantauPeakndvi, main = 'Lantau Peak')


#Plotting the graphs for Sunset Peak Country Park
SunsetPeakNIR = raster("Sunset Peak.jpg", band = 1)
SunsetPeakr = raster("Sunset Peak.jpg", band = 2)
SunsetPeakndvi = (SunsetPeakNIR-SunsetPeakr)/(SunsetPeakNIR+SunsetPeakr)
SunsetPeakndvi[SunsetPeakndvi < 0.2] = NA
plot(SunsetPeakndvi, main = 'Sunset Peak')
spplot(SunsetPeakndvi, main = 'Sunset Peak', col.regions = my.palette, cuts = 7)
hist(SunsetPeakndvi, main = 'Sunset Peak')



#Comparing the median NDVI of different country parks

#Importing the median NDVI of different country parks into an array variable
Aberdeenmedian<-summary(Aberdeenndvi)[3]
TaiTammedian<-summary(TaiTamndvi)[3]
PokFuLammedian<-summary(PokFuLamndvi)[3]
ShekOmedian<-summary(ShekOndvi)[3]
LungFuShanmedian<-summary(LungFuShanndvi)[3]
ClearWaterBaymedian<-summary(ClearWaterBayndvi)[3]
KamShanmedian<-summary(KamShanndvi)[3]
LionRockmedian<-summary(LionRockndvi)[3]
PatSinLengmedian<-summary(PatSinLengndvi)[3]
PloverCovemedian<-summary(PloverCovendvi)[3]
TaiLamChungmedian<-summary(TaiLamChungndvi)[3]
LantauPeakmedian<-summary(LantauPeakndvi)[3]
SunsetPeakmedian<-summary(SunsetPeakndvi)[3]



#Importing the median NDVI of different country parks into an array variable
medians <- c(Aberdeenmedian, TaiTammedian, PokFuLammedian, ShekOmedian, LungFuShanmedian, ClearWaterBaymedian, KamShanmedian, LionRockmedian, PatSinLengmedian, PloverCovemedian, LantauPeakmedian, SunsetPeakmedian)
#Assigning the list of country park names to be put below each bar
countryParks <- c("Aberdeen", "Tai Tam", "Pok Fu Lam", "Shek O", "Lung Fu Shan", "Clear Water Bay", "Kam Shan", "Lion Rock", "Pat Sin Leng", "Plover Cove", "Lantau Peak", "Sunset Peak")


#Plotting the barchart of the median NDVI value of different country parks
barplot(medians, horiz=T, las=1 ,names.arg= countryParks, main = 'medians')
