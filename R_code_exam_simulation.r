# R code for the exam! !

# nc data: we need library
# https://cran.r-project.org/web/packages/ncdf4/index.html

install.packages("ncdf4")
library(ncdf4)
library(raster)

srtwed("c:/lab/")

# importing images
tjan <- raster("c_gls_LST_202101181300_GLOBE_GEO_V1.2.1")
plot(tjan)

# Exercise: change the colorramppalette
cltjan <- colorRamp Palette(c('blue', 'yellow', 'red'))(100) #
plot(tjan, col=cltjan

toct <- raster("")
plot(toct, col=cltjan)

dift <- tjan - toct
cldif <- colorRampPalette(c('blue', 'white', 'red'))(100) #
plot(dift, col=cldif)

 
    
     
         
