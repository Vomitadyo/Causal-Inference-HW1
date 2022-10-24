# Innocent Vomitadyo 736D HW 2

rm(list = ls())

library(ggplot2)
library(dplyr)
library(tidyverse)

df1 <- read.csv("C:/Users/Vomitadyo/Desktop/AREC 736D Econometrics- Causal Inferences/HW 2/No_selection_data.csv")

#1)	Create overlapping histograms of the distribution of the X variable where one histogram displays the distribution of X when D = 0 and the other is the distribution of X when D =1

dfd_0 <- filter(df1, df1$D==0)
dfd_1 <- filter(df1, df1$D==1)

hist(dfd_0$X, main = "X Variable", 
     col = rgb(1, 0 , 0,0.5))

hist(dfd_1$X, 
     col = rgb(0, 1, 0, 0.5),
     add = TRUE)
