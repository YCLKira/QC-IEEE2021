#Setting the working directory
setwd(".\\Photos")

#Importing the library that is needed for  the image cropping
library(EBImage)

#Setting the file names and directory names
parknames = c("Aberdeen","Tai Tam", "Pok Fu Lam", "Shek O", "Lung Fu Shan", "Clear Water Bay", "Kam Shan", "Lion Rock", "Pat Sin Leng", "Plover Cove", "Tai Lam Chung", "Lantau Peak", "Sunset Peak")
filenames = paste(parknames, ".jpg", sep = "")
pathnames = paste(".\\Images\\", filenames, sep = "")
newpath = paste(".\\Cropped\\", filenames, sep = "")

#Cropping and exporting the images
for (x in 1:13){
  writeImage(readImage(pathnames[x])[150:3450, 190:2360,], newpath[x])
}