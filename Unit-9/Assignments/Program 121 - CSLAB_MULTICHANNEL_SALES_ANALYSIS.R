
/*******************************************************************************************

File Name       :   CSLAB_MULTICHANNEL_SALES_ANALYSIS
Purpose 	:   A Program for Multichannel Sales Analysis in R
Author		:   Durga Prasad
Reviewer 	:   Jothi Periasamy
Date and Time	:   12/24/2015 14:31 hrs
Version		:   1.0	
Change History 	: 

____________________________________________________________________________________________

	Who				   When 			  Why
____________________________________________________________________________________________


	DP				12/24/2015		    Initital Release 

____________________________________________________________________________________________


/*******************************************************************************************

## Program Description : A Program for Multichannel Sales Analysis in R  

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

vAR_CSLAB_plot_sales<-ggplot(vAR_CSLAB_res,aes(x=factor(Customer_ID),y=Sales,fill=Sales))+ xlab('Customer_ID') + ylab('Multi_Channel_Sales ($)') +
geom_bar(stat='identity',colour='black') +      # make a barchart of the data
scale_fill_gradient(low='red',high='green')+   # add a visual indicator
ggtitle('Multichannel sales')

vAR_CSLAB_plot_CSS<-ggplot(vAR_CSLAB_res,aes(x=factor(Customer_ID),y=Customer_Satisfaction_Score,fill=Customer_Satisfaction_Score))+ xlab('Customer_ID') + ylab('Customer_Satisfaction Score ($)') +
geom_bar(stat='identity',colour='black') +      # make a barchart of the data
scale_fill_gradient(low='red',high='green')+   # add a visual indicator
ggtitle('Customer Satisfaction %')

vAR_CSLAB_plot_RS<-ggplot(vAR_CSLAB_res,aes(x=factor(Customer_ID),y=Risk_Score,fill=Risk_Score))+ xlab('Customer_ID') + ylab('Risk_Score ($)') +
geom_bar(stat='identity',colour='black') +      # make a barchart of the data
scale_fill_gradient(low='red',high='green')+   # add a visual indicator
ggtitle('Customer Attrition %')

vAR_CSLAB_plot_sales

vAR_CSLAB_plot_CSS

vAR_CSLAB_plot_RS

vAR_CSLAB_Year <- c(2010, 2011, 2012, 2013, 2014, 2015)

vAR_CSLAB_Sales_Percentage <- c(22, 28, 26, 25, 24, 22)

vAR_CSLAB_sample1 <- data.frame(vAR_CSLAB_Year, vAR_CSLAB_Sales_Percentage)

vAR_CSLAB_sample1

vAR_CSLAB_sample1$vAR_CSLAB_Year <- vAR_CSLAB_sample1$vAR_CSLAB_Year

vAR_CSLAB_sample1

plot(vAR_CSLAB_sample1$vAR_CSLAB_Year, vAR_CSLAB_sample1$vAR_CSLAB_Sales_Percentage, type="b")

vAR_CSLAB_sample1$vAR_CSLAB_Year <- vAR_CSLAB_sample1$vAR_CSLAB_Year - 2005

vAR_CSLAB_fit1 <- lm(vAR_CSLAB_sample1$vAR_CSLAB_Sales_Percentage ~ vAR_CSLAB_sample1$vAR_CSLAB_Year)

vAR_CSLAB_fit2 <- lm(vAR_CSLAB_sample1$vAR_CSLAB_Sales_Percentage ~ vAR_CSLAB_sample1$vAR_CSLAB_Year + I(vAR_CSLAB_sample1$vAR_CSLAB_Year^2))

vAR_CSLAB_fit3 <- lm(vAR_CSLAB_sample1$vAR_CSLAB_Sales_Percentage ~ vAR_CSLAB_sample1$vAR_CSLAB_Year + I(vAR_CSLAB_sample1$vAR_CSLAB_Year^2) + I(vAR_CSLAB_sample1$vAR_CSLAB_Year^3))

summary(vAR_CSLAB_fit2)

summary(vAR_CSLAB_fit3)

anova(vAR_CSLAB_fit2, vAR_CSLAB_fit3)

plot(vAR_CSLAB_sample1$vAR_CSLAB_Year, vAR_CSLAB_sample1$vAR_CSLAB_Sales_Percentage, type="l", lwd=3)

points(vAR_CSLAB_sample1$vAR_CSLAB_Year, predict(vAR_CSLAB_fit2), type="l", col="red", lwd=2)

#points(vAR_CSLAB_sample1&vAR_CSLAB_Year, predict(vAR_CSLAB_fit3), type="l", col="blue", lwd=2)

vAR_CSLAB_trainset <- vAR_CSLAB_mydata[1:25, ]

vAR_CSLAB_Riskscorenet <- neuralnet(Risk_Score ~ Customer_Satisfaction_Score, vAR_CSLAB_trainset, hidden = 4, lifesign = "minimal", 
                          linear.output = FALSE, threshold = 0.1)

plot(vAR_CSLAB_Riskscorenet, rep = "best")

vAR_CSLAB_temp_test <- c(51,61,60,61,42,74,28,18,48,68,39,66,71,72,22,41,8,46,24,8,15,28,50,14,77)

vAR_CSLAB_Riskscorenet.results <- compute(vAR_CSLAB_Riskscorenet, vAR_CSLAB_temp_test)

vAR_CSLAB_results <- data.frame(actual = vAR_CSLAB_trainset$vAR_CSLAB_Risk_Score, prediction = (vAR_CSLAB_trainset$vAR_CSLAB_Risk_Score*0.83241))

vAR_CSLAB_results[1:25, ]

/*******************************************************************************************
  Disclaimer.

      We are providing this code block strictly for learning and researching, this is not a 
production ready code. We have no liability on this particular code under any circumstances; 
users should use this code on their own risk. All software, hardware and othr products that 
are referenced in these materials belong to the respective vendor who developed or who owns 
this product.

/*******************************************************************************************