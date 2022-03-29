#Setting the working directory
setwd(".\\Photos\\Cropped")

#Import the required packages
library(raster)
library(rgdal)
library(RColorBrewer)

#Setting the colour palette (Yellow-Green) for spplot
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
  
  setwd(paste("..\\..\\Bars and Graphs\\", countrypark, sep = ""))
  
  #Plotting the NDVI frequency graph
  jpeg(paste(countrypark, "Freq.jpg", sep = ""),
       width = 960, height = 640, units = "px")
  hist(ndvi, main= countrypark)
  dev.off()
  
  #Plotting the NDVI graphs
  jpeg(paste(countrypark, "NDVIplot.jpg", sep = ""),
       width = 960, height = 640, units = "px")
  plot(ndvi, main = countrypark, xlim = c(0,3301), ylim = c(0,2171))
  dev.off()
  
  #Plotting the NDVI graphs(spplot)
  jpeg(paste(countrypark, "NDVISpplot.jpg", sep = ""),
       width = 960, height = 640, units = "px")
  print(spplot(ndvi, main = countrypark, col.regions = my.palette, cuts = 7))
  dev.off()
  
  setwd("..\\..\\Photos\\Cropped")
  
  return(summary(ndvi)[3])
}

#Setting an empty vector for storing median NDVI values later
medians = vector(mode = "numeric", length = 7)

#Setting vectors for the park names and the file names to be used
#for NDVI calculation
parknames = c("Aberdeen","Tai Tam", "Pok Fu Lam",
              "Shek O", "Lung Fu Shan", "Clear Water Bay",
              "Kam Shan", "Lion Rock", "Pat Sin Leng",
              "Plover Cove", "Tai Lam Chung", "Lantau Peak",
              "Sunset Peak")
filenames = paste(parknames, ".jpg", sep = "")


#Calculating the median NDVI values of different country parks
for (x in 1:13){
  medians[x] = ndvianalysis(filenames[x], parknames[x])
}

#Plotting the bar chart of the median NDVI value of different country parks
setwd("..\\..\\Bars and Graphs")
jpeg("Medianplot.jpg", width = 960, height = 640, units = "px")
par(mar = c(5, 8, 4, 2))
bp = barplot(medians,
             horiz = T,
             las = 1, 
             xlim = c(0,0.6),
             names.arg = parknames,
             main = 'medians')
text(x = medians + 0.015, y = bp, labels = round(medians,3))
dev.off()
