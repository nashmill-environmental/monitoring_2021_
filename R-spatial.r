# R spatial

library(sp)

data(meuse)

head(meuse)

coordinates(meuse) = ~x+y

plot(meuse)

# spplot is used to plot element like zinc, lead etc. spread in space
spplot(meuse, "zinc", main="concentration of zinc")

# Exercise: plot the concentration of copper
spplot(meuse, "copper", main="concentration of copper")

# Exercise; see copper and zinc
spplot(meuse, c("copper", "zinc"))

# this is the same solution we used for the first lecture
# primates <- c(1,5,10)

# Rather than using colours, let's make of bubbles
bubble(meuse, "zinc")

# do the same for lead
bubble(meuse, "lead")
bubble(meuse, "lead", col="red")

##### Instaling the ggplot2 library/ package

install.packages("ggplot2")

library(ggplot2)

# ecological dataframe
# biofules 
biofuels <- c(120, 200, 350, 570, 750) # array of values: c
biofuels
# oxydative enzimes
oxydative <- c(1200, 1300, 21000, 34000, 50000)
oxydative

# dataframe
d <- data.frame(biofuels, oxydative)
d 

# It is the same to do data.frame(biofuels, oxydative)? yes!
ggplot(d, aes(x = biofuels, y = oxydative)) + geom_point()

ggplot(d, aes(x = biofuels, y = oxidative)) + geom_point(size = 5, col = "blue")

# lines
ggplot(d, aes(x = biofuels, y = oxydative)) + geom_line()

# points + lines
ggplot(d, aes(x = biofuels, y = oxydative)) + geom_point() + geom_line()
ggplot(d, aes(x = biofuels, y = oxydative)) + geom_point(size = 5, col = "blue") + geom_line()

# polygons
ggplot(d, aes(x = biofuels, y = oxydative)) + geom_polygon()

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
head(covid)
  
summary(covid)
  
name(covid)

# ggplot2
library(ggplot2)
ggplot(covid, aes(x = lon, y = lat)) + geom_point()

# change the size of the data...
ggplot(covid, aes(x = lon, y = lat, size = cases)) + geom_point()


  
  
  
  
  
  
  
  
  
  
  
  
