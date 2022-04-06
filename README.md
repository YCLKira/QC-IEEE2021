# QC-IEEE2021

# Installing R and RStudio
R and RStudio can be downloaded at these links

R: https://cran.r-project.org/

RStudio: https://www.rstudio.com/products/rstudio/download/


# How to use the programs:

# Crop.R
1. Load the program in RStudio
2. Download the packages by entering the follwing commands in console
(Bottom left tab of Rstudio):
install.packages("EBImage")
3. Press CTRL + ALT + B to run the entire program
4. The images will be automatically cropped and exported to the Cropped folder

# IEEE.R
1. Load the program in RStudio
2. Download the packages by entering the following commands in console (Bottom left tab of Rstudio):
install.packages("raster")
install.packages("rgdal")
install.packages("rcolorbrewer")
(NOTE: If the packages cannot be installed, try running RStudio as Administrator)
3. Press CTRL + ALT + B to run the entire program
4. The plots will be automatically exported to the Bars and Graphs folder in the resolution of 960x640

Sources of data used:
Hong Kong Map Services Website 2.0 (https://www.hkmapservice.gov.hk/OneStopSystem/map-search?product=OSSCatA)
No. A202, "Population Density by District Council District and Year", 2021 Population Census (https://www.census2021.gov.hk/en/main_tables.html)
