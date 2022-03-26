#Setting the working directory
setwd(".\\Photos")

#Importing the library that is needed for  the image cropping
library(EBImage)

#The file names
filenames = c("Aberdeen.jpg","Tai Tam.jpg", "Pok Fu Lam.jpg",
              "Shek O.jpg", "Lung Fu Shan.jpg", "Clear Water Bay.jpg",
              "Kam Shan.jpg", "Lion Rock.jpg", "Pat Sin Leng.jpg",
              "Plover Cove.jpg", "Tai Lam Chung.jpg", "Lantau Peak.jpg",
              "Sunset Peak.jpg")
#The path and file name for the uncropped images
pathnames = paste(".\\Images\\", filenames, sep = "")
#The path and file name for the cropped images
newpath = paste(".\\Cropped\\", filenames, sep = "")

#Cropping and exporting the images
for (x in 1:13){
  writeImage(readImage(pathnames[x])[150:3450, 190:2360,], newpath[x])
}