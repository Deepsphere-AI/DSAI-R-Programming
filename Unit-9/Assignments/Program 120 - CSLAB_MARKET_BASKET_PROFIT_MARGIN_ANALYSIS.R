
/*******************************************************************************************

File Name       :   CSLAB_MARKET_BASKET_PROFIT_MARGIN_ANALYSIS
Purpose 	:   A Program for Market Basket Profit Margin Prediction in R
Author		:   Durga Prasad
Reviewer 	:   Jothi Periasamy
Date and Time	:   12/24/2015 14:04 hrs
Version		:   1.0	
Change History 	: 

____________________________________________________________________________________________

	Who				   When 			  Why
____________________________________________________________________________________________


	DP				12/24/2015		    Initital Release 

____________________________________________________________________________________________


/*******************************************************************************************

## Program Description : A Program for Market Basket Profit Margin Prediction in R  

## R Development Environment & Runtime - R Studio, Anaconda, Jupyter
  
library("plotrix")  

library("RODBC")

library(ggplot2)

set.seed(1234567890)

library("neuralnet")

vAR_CSLAB_ENV_VARIABLE_PATH = Sys.getenv("R_TUTORIAL_PATH")

vAR_CSLAB_FILE = "Data.txt"

vAR_CSLAB_FILE_PATH = paste(vAR_CSLAB_ENV_VARIABLE_PATH,vAR_CSLAB_FILE,sep="")

vAR_CSLAB_res <- read.table(vAR_CSLAB_FILE_PATH, header=TRUE, sep="\t")

#vAR_CSLAB_res <- read.table("C:/DeepSphere.AI/R Tutorial/Unit-8/Use Case Implementation/Data/Data.txt", header=TRUE, sep="\t")

vAR_CSLAB_plot_RS<-ggplot(vAR_CSLAB_res,aes(x=factor(Customer_ID),y=Risk_Score,fill=Risk_Score))+ xlab('Customer_ID') + ylab('Profit_Margin ($)') +
geom_bar(stat='identity',colour='black') +      # make a barchart of the data
scale_fill_gradient(low='red',high='green')+   # add a visual indicator
ggtitle('Profit Margin %')

vAR_CSLAB_plot_RS

vAR_CSLAB_Year <- c(2010, 2011, 2012, 2013, 2014, 2015)

vAR_CSLAB_Profit_Margin_Percentage <- c(22, 28, 26, 25, 24, 22)

vAR_CSLAB_sample1 <- data.frame(vAR_CSLAB_Year, vAR_CSLAB_Profit_Margin_Percentage)

vAR_CSLAB_sample1

vAR_CSLAB_sample1$vAR_CSLAB_Year <- vAR_CSLAB_sample1$vAR_CSLAB_Year

vAR_CSLAB_sample1

plot(vAR_CSLAB_sample1$vAR_CSLAB_Year, vAR_CSLAB_sample1$Profit_Margin_Percentage, type="b")

vAR_CSLAB_sample1$vAR_CSLAB_Year <- vAR_CSLAB_sample1$vAR_CSLAB_Year - 2005

vAR_CSLAB_fit1 <- lm(vAR_CSLAB_sample1$vAR_CSLAB_Profit_Margin_Percentage ~ vAR_CSLAB_sample1$vAR_CSLAB_Year)

vAR_CSLAB_fit2 <- lm(vAR_CSLAB_sample1$vAR_CSLAB_Profit_Margin_Percentage ~ vAR_CSLAB_sample1$vAR_CSLAB_Year + I(vAR_CSLAB_sample1$vAR_CSLAB_Year^2))

vAR_CSLAB_fit3 <- lm(vAR_CSLAB_sample1$vAR_CSLAB_Profit_Margin_Percentage ~ vAR_CSLAB_sample1$vAR_CSLAB_Year + I(vAR_CSLAB_sample1$vAR_CSLAB_Year^2) + I(vAR_CSLAB_sample1$vAR_CSLAB_Year^3))

summary(vAR_CSLAB_fit2)

summary(vAR_CSLAB_fit3)

anova(vAR_CSLAB_fit2, vAR_CSLAB_fit3)

plot(vAR_CSLAB_sample1$vAR_CSLAB_Year, vAR_CSLAB_sample1$vAR_CSLAB_Profit_Margin_Percentage, type="l", lwd=3)

points(vAR_CSLAB_sample1$vAR_CSLAB_Year, predict(vAR_CSLAB_fit2), type="l", col="red", lwd=2)


/*******************************************************************************************
  Disclaimer.

      We are providing this code block strictly for learning and researching, this is not a 
production ready code. We have no liability on this particular code under any circumstances; 
users should use this code on their own risk. All software, hardware and othr products that 
are referenced in these materials belong to the respective vendor who developed or who owns 
this product.

/*******************************************************************************************