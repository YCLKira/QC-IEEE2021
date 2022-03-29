#Setting the working directory
setwd(".\\Photos\\Cropped")

#Import the required packages
library(raster)
library(rgdal)
library(RColorBrewer)


#Setting the color palette (Yellow-Green) for spplot
my.palette <- brewer.pal(n = 8, name = "YlGn")

#Function for plotting the NDVI graphs for different country parks
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
  
  return(c(summary(ndvi)[3], 
           cellStats(ndvi, stat = 'mean'),
           cellStats(ndvi, stat = 'sd'),
           summary(ndvi)[5] - summary(ndvi)[1]))
}


#Setting vectors for the park names and the file names to be used
#for NDVI calculation
parknames = c("Aberdeen","Tai Tam", "Pok Fu Lam",
              "Shek O", "Lung Fu Shan", "Clear Water Bay",
              "Kam Shan", "Lion Rock", "Pat Sin Leng",
              "Plover Cove", "Tai Lam Chung", "Lantau Peak",
              "Sunset Peak")
filenames = paste(parknames, ".jpg", sep = "")

#Creating an empty dataframe
df = data.frame()

#Calculating the median NDVI values of different country parks and storing it
#in the dataframe
for (x in 1:13){
    df = rbind(df, ndvianalysis(filenames[x], parknames[x]))
}

#Adding a column for country park names
df = cbind(df, names = parknames)

#Renaming the columns
colnames(df) = c("Median", "Mean", "Standard Deviation", "Range", "Name")

#Plotting the bar chart for the median, mean, standard deviation,
#range of ndvi of different country parks
setwd("..\\..\\Bars and Graphs")
for (x in 1:4){
  #Create jpeg file
  jpeg(paste(colnames(df)[x],"Plot.jpg", sep = ""), width = 960, height = 640, units = "px")
  #Setting the plot margins
  par(mar = c(5, 8, 4, 4))
  #Order the dataframe by median/mean/standard deviation/range of ndvi
  df = df[order(df[x], decreasing = TRUE), ]
  #Plotting the bar chart
  bp = barplot(df[[colnames(df)[x]]],
               horiz = T,
               las = 1,
               names.arg = df[[colnames(df)[5]]],
               xlim = c(0, median(df[[colnames(df)[x]]]))*1.4,
               main = colnames(df)[x])
  #Labeling the value (3 significant figures) of each column
  text(x = df[[colnames(df)[x]]] + median(df[[colnames(df)[x]]])*0.04,
       y = bp,labels = signif(df[[colnames(df)[x]]],3))
  #Close the file
  dev.off()
}
