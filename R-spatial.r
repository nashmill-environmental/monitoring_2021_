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

