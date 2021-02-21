# point pattern analysis

install.packages("spatstat")
library(spatstat)


###### IMPORT DATA FROM AN EXTERNAL SOURCE

# creat a lab folder (also called directory) under the main disc and then set the working directory by:

# serwd("path/lab")

# setwd for windows
setwd("c:/lab/")

# in case you could not create a lab folder:
setwd("c:/")

# setwd Mac
set("/Users/yourname/lab/")

#linux
setwd("~/lab/")
covid <- read.table("covid_agg.csv", header=TRUE)
covid


# now, let's see the sensity of the covid data!
# let's make a planar point pattern in spatstat
attach(covid)
# x, y, ranges
covid_planar <- ppp(lon, lat, c(-180, 180), c(-90, 90))

density_map <- density(covid_planar)

plot(density_map)
points(covid_planar)

# Exercise: change the colour of the map
cl <- colorRampPalette (c('blue','yellow','orange','red','magenta'))(100) #
plot(density_map, col = cl)
points(covid_planar)


# putting the countries ontop of the map

# for linux: 
# sudo apt-get update
# sudo apt-get install libgdal-dev libproj-dev

install.packages("rgdal") 

library(rgdal)


coastlines <- readOGR("ne_10m_coastline.shp")

# cl <- colorRampPalette (c('pink','yellow','orange','red'))(100) #
plot(density_map, col = cl)
points(covid_planar, pch = 19, cex = 0.5)
plot(coastlines, add = TRUE)

png("figure1.png")
cl <- colorRampPalette (c('pink','yellow','orange','red'))(100) #
plot(density_map, col = cl)
points(covid_planar, pch = 19, cex = 0.5)
plot(coastlines, add = TRUE)
dev.off()

pdf("figure1.pdf")
cl <- colorRampPalette (c('pink','yellow','orange','red'))(100) #
plot(density_map, col = cl)
points(covid_planar, pch = 19, cex = 0.5)
plot(coastlines, add = TRUE)
dev.off()

head(covid)


###### interpolate case data

marks(covid_planar) <- cases
cases_map <- Smooth(covid_planar)

plot(cases_map, col = cl)
points(covid_planar)
plot(coastlines, add = TRUE)


###### plotting points with different size related to covid data together with the interpolated map
# lab


# serwd("path/lab")

# setwd for windows
setwd("c:/lab/")

# in case you could not create a lab folder:
setwd("c:/")

# setwd Mac
set("/Users/yourname/lab/")

#linux
setwd("~/lab/")

library(spatstat)
# install.packages("spatstat")
library(rgdal)
# install.packages("rgdal")

covid <- read.table("covid_agg.csv", header=TRUE)
# or read.csv

head(covid)

attach(covid)  # if you do not attach: covid$lon
covid_planar <- ppp(lon,lat,c(-180, 180),c(-90, 90))

marks(covid_planar) <- cases
cases_map <- Smooth(covid_planar)

cl <- colorRampPalette(c('lightpink2','lightsalmon','tomato1','red3','maroon'))(100) #
# colour names
#https://www.datanovia.com/en/blog/r-colors-amazing-resources-you-want-to-

plot(cases_map, col = cl)
points(covid_planar)
plot(coastlines, add = TRUE)

#####
install.packages("sf")
library(sf)

Spoints <- st_as_sf(covid, coords = c("lon", "lat"))

cl <- colorRampPalette(c('lightpink2','lightsalmon','tomato1','red3','maroon'))(100) #
plot(cases_map, col = cl)
plot(Spoints, cex=Spoints$cases/10000, col = 'purple3', lwd = 3, add=T)

library(rgdal)
# put a smooth to the coastlines by resamling
coastlines <- readOGR("ne_10m_coastline.shp")
plot(coastlines, add= T)








