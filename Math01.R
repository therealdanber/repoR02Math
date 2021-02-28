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
x <- 0
y <- m*x + c 
m; x; c; y