#FILE: ---------------------- Math01.R -------------
rm(list=ls())
getwd()
#setwd("C:/Users/.../R/Scripts")
getwd()

options(digits=15)

library("tidyverse")
library(dplyr) 
library(magrittr) # %<>%
#load("foreign")

#Straight line equation: slope-intercept form
m <- 1 # m: slope
c <- 0 # c: y-intercept
#x <- 0
#y <- m*x + c 
#m; x; c; y
x <- c(0:5); x; length(x)
y <- c(0:5)*0; y
for (i in 1:length(x)){
  y[i] <- m*x[i] + c
  print(paste("x=",x[i]," y=",y[i]))
}
print(x); y
plot(x,y)

#Equation of a circle: (x-h)^2 + (y-k)^2 = r^2
x <- c(-5:5); x; length(x)
yp <- c(-5:5)*0; yp; length(yp)
yn <- c(-5:5)*0; yn; length(yn)
h <- 0; k <- 0; r <- max(x)
r
for (i in 1:length(x)){
  #(x[i]-h)^2 + (y[i]-k)^2 = r^2
  yp[i] <- sqrt(r^2 - (x[i]-h)^2) + k
  print(paste("x=",x[i]," yp=",yp[i]))
}
yn <- yp * (-1); 
print(x); yp; yn
plot(x,yp, type="o", col="blue", pch="o", xlim=c(-5, 5), ylim = c(-5,5)); 
points(x, yn, col="red", pch="*")
lines(x, yn, col="red",lty=2)
# Add a title
title("Circle")
