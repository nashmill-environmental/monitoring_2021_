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

density_map <- dencity(covid_planar)

plot(density_map)
points(covid_planar)

# Exercise: change the colour of the map
cl <- colorRampPLatte (c('blue', 'yellow', 'orang', 'red', 'magenta'))(100) #
plot(density_map, col = cl)
points(covid_planar)


# putting the countries ontop of the map

# for linux: 
# sudo apt-get update
# sudo apt-get install libgdal-dev libproj-dev

install.packages("rgdal")
























