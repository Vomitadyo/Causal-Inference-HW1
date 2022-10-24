# Innocent Vomitadyo 736D HW 2

rm(list = ls())

library(ggplot2)
library(dplyr)
library(tidyverse)

df1 <- read.csv("C:/Users/Vomitadyo/Desktop/AREC 736D Econometrics- Causal Inferences/HW 2/No_selection_data.csv")

#1)	Create overlapping histograms of the distribution of the X variable where one histogram displays the distribution of X when D = 0 and the other is the distribution of X when D =1

dfd_0 <- filter(df1, df1$D==0)
dfd_1 <- filter(df1, df1$D==1)

hist(dfd_0$X, main = " Distribution of X Variable", 
     col = rgb(1, 0 , 0,0.5),
     xlab = "X Variable")

hist(dfd_1$X, 
     col = rgb(0, 1, 0, 0.5),
     add = TRUE)


#2)	Calculate the simple difference in means between the control and treated groups. What is your answer? 

mean(dfd_1$outcome)
mean(dfd_0$outcome)

mean_diff_outcome <- mean(dfd_1$outcome) - mean(dfd_0$outcome)
mean_diff_outcome

mean_diff_X <- mean(dfd_1$X) - mean(dfd_0$X)
mean_diff_X


#4.	Use OLS to regress the variable “outcome” on treatment (D). Did your recover the simple difference in means estimate? Why or why not? 

OLS <- lm(outcome~D, df1)
summary(OLS)


#5.	Use OLS to regress “outcome” on treatment controlling for X. Did you recover the simple difference in means estimate? Why or why not? 

OLS1 <- lm(outcome~D+X, df1)
summary(OLS1)



# Part ii

#6.)	Calculate the simple difference in means between the control and treated groups. What is your answer? Why is it not the same as the answer from the previous dataset? 

df2 <- read.csv("C:/Users/Vomitadyo/Desktop/AREC 736D Econometrics- Causal Inferences/HW 2/selection_data.csv")

df2d_0 <- filter(df2, df2$D==0)
df2d_1 <- filter(df2, df2$D==1)


mean(df2d_1$outcome)
mean(df2d_0$outcome)

mean_diff_outcome1 <- mean(df2d_1$outcome) - mean(df2d_0$outcome)
mean_diff_outcome1

mean_diff_X1 <- mean(df2d_1$X) - mean(df2d_0$X)
mean_diff_X1



#8)	Use OLS to regress “outcome” on treatment (D). Did your recover the simple difference in means estimate? Why or why not? 

OLS2 <- lm(outcome~D, df2)
summary(OLS2)

#9. 

OLS3 <- lm(outcome~D+X, df2)
summary(OLS3)




#10.Find the nearest neighbor match for each person 


















