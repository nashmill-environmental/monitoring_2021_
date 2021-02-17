# Here you can write everything! This is a comment!

# R code for plotting the relationship among ecological variables

# install.packages is used to install packages
install.packages("sp")
library(sp)

# data is used to recall datasets
data(meuse)

# look inside the set!
meuse

View(meuse) # it might not work for mac
# solve using: https://www.xquartz.org

head(meuse)


# Exercise: mean of all of the variables?
# cadmium crazy mean extraction
(11.7+8.6+6.5+2.6+2.8+3.0)/6
summary(meuse)

# Exercise: plot zinc(y) against cadmium(x)
# error
plot(cadmium, zinc)
# Error in h(simpleError(msg, call)) :
#  error in evaluating the argument 'x' in selecting a method for function 'plot': object 'cadmium' not found

# $

plot(meuse$cadmium, meuse$zinc)

# if you attach you do not need the dollar symboll!
attach(meuse)
plot(cadmium, zinc)

plot(cadmium, lead)

# how to impress your supervisor!
# trivial
# Scatterplot Matrices
pairs(meuse)

# Question!!!
# pairing only the elements part of the dataset: how to do taht?
# only with cadmium, copper, lead zinc ...



