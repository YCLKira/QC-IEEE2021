library(raster)
library(rgdal)
library(RColorBrewer)

my.palette <- brewer.pal(n = 8, name = "YlGn")

AberdeenNIR = raster("Aberdeen.jpg", band = 1)
Aberdeenr = raster("Aberdeen.jpg", band = 2)
Aberdeenndvi = (AberdeenNIR-Aberdeenr)/(AberdeenNIR+Aberdeenr)
Aberdeenndvi[Aberdeenndvi < 0.2] = NA
plot(Aberdeenndvi, main = 'Aberdeen')
spplot(Aberdeenndvi, main = 'Aberdeen', col.regions = my.palette, cuts = 7)
hist(Aberdeenndvi, main = 'Aberdeen')

TaiTamNIR = raster("Tai Tam.jpg", band = 1)
TaiTamr = raster("Tai Tam.jpg", band = 2)
TaiTamndvi = (TaiTamNIR-TaiTamr)/(TaiTamNIR+TaiTamr)
TaiTamndvi[TaiTamndvi < 0.2] = NA
plot(TaiTamndvi, main = 'Tai Tam')
spplot(TaiTamndvi, main = 'Tai Tam', col.regions = my.palette, cuts = 7)
hist(TaiTamndvi, main = 'Tai Tam')

PokFuLamNIR = raster("Pok Fu Lam.jpg", band = 1)
PokFuLamr = raster("Pok Fu Lam.jpg", band = 2)
PokFuLamndvi = (PokFuLamNIR-PokFuLamr)/(PokFuLamNIR+PokFuLamr)
PokFuLamndvi[PokFuLamndvi < 0.2] = NA
plot(PokFuLamndvi, main = 'Pok Fu Lam')
spplot(PokFuLamndvi, main = 'Pok Fu Lam', col.regions = my.palette, cuts = 7)
hist(PokFuLamndvi, main = 'Pok Fu Lam')

ShekONIR = raster("Shek O.jpg", band = 1)
ShekOr = raster("Shek O.jpg", band = 2)
ShekOndvi = (ShekONIR-ShekOr)/(ShekONIR+ShekOr)
ShekOndvi[ShekOndvi < 0.2] = NA
plot(ShekOndvi, main = 'Shek O')
spplot(ShekOndvi, main = 'Shek O', col.regions = my.palette, cuts = 7)
hist(ShekOndvi, main = 'Shek O')

LungFuShanNIR = raster("Lung Fu Shan.jpg", band = 1)
LungFuShanr = raster("Lung Fu Shan.jpg", band = 2)
LungFuShanndvi = (LungFuShanNIR-LungFuShanr)/(LungFuShanNIR+LungFuShanr)
LungFuShanndvi[LungFuShanndvi < 0.2] = NA
plot(LungFuShanndvi, main = 'Lung Fu Shan')
spplot(LungFuShanndvi, main = 'Lung Fu Shan', col.regions = my.palette, cuts = 7)
hist(LungFuShanndvi, main = 'Lung Fu Shan')

ClearWaterBayNIR = raster("Clear Water Bay.jpg", band = 1)
ClearWaterBayr = raster("Clear Water Bay.jpg", band = 2)
ClearWaterBayndvi = (ClearWaterBayNIR-ClearWaterBayr)/(ClearWaterBayNIR+ClearWaterBayr)
ClearWaterBayndvi[ClearWaterBayndvi < 0.2] = NA
plot(ClearWaterBayndvi, main = 'Clear Water Bay')
spplot(ClearWaterBayndvi, main = 'Clear Water Bay', col.regions = my.palette, cuts = 7)
hist(ClearWaterBayndvi, main = 'Clear Water Bay')

KamShanNIR = raster("Kam Shan.jpg", band = 1)
KamShanr = raster("Kam Shan.jpg", band = 2)
KamShanndvi = (KamShanNIR-KamShanr)/(KamShanNIR+KamShanr)
KamShanndvi[KamShanndvi < 0.2] = NA
plot(KamShanndvi, main = 'Kam Shan')
spplot(KamShanndvi, main = 'Kam Shan', col.regions = my.palette, cuts = 7)
hist(KamShanndvi, main = 'Kam Shan')

LionRockNIR = raster("Lion Rock.jpg", band = 1)
LionRockr = raster("Lion Rock.jpg", band = 2)
LionRockndvi = (LionRockNIR-LionRockr)/(LionRockNIR+LionRockr)
LionRockndvi[LionRockndvi < 0.2] = NA
plot(LionRockndvi, main = 'Lion Rock')
spplot(LionRockndvi, main = 'Lion Rock', col.regions = my.palette, cuts = 7)
hist(LionRockndvi, main = 'Lion Rock')

PatSinLengNIR = raster("Pat Sin Leng.jpg", band = 1)
PatSinLengr = raster("Pat Sin Leng.jpg", band = 2)
PatSinLengndvi = (PatSinLengNIR-PatSinLengr)/(PatSinLengNIR+PatSinLengr)
PatSinLengndvi[PatSinLengndvi < 0.2] = NA
plot(PatSinLengndvi, main = 'Pat Sin Leng')
spplot(PatSinLengndvi, main = 'Pat Sin Leng', col.regions = my.palette, cuts = 7)
hist(PatSinLengndvi, main = 'Pat Sin Leng')

PloverCoveNIR = raster("Plover Cove.jpg", band = 1)
PloverCover = raster("Plover Cove.jpg", band = 2)
PloverCovendvi = (PloverCoveNIR-PloverCover)/(PloverCoveNIR+PloverCover)
PloverCovendvi[PloverCovendvi < 0.2] = NA
plot(PloverCovendvi, main = 'Plover Cove')
spplot(PloverCovendvi, main = 'Plover Cove', col.regions = my.palette, cuts = 7)
hist(PloverCovendvi, main = 'Plover Cove')


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


medians <- c(Aberdeenmedian, TaiTammedian, PokFuLammedian, ShekOmedian, LungFuShanmedian, ClearWaterBaymedian, KamShanmedian, LionRockmedian, PatSinLengmedian, PloverCovemedian)
countryParks <- c("Aberdeen", "Tai Tam", "Pok Fu Lam", "Shek O", "Lung Fu Shan", "CWB", "Kam Shan", "Lion Rock", "Pat Sin Leng", "PCove")

barplot(medians, names.arg= countryParks, main = 'medians')