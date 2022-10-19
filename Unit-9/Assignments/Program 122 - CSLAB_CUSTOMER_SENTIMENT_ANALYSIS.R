
/*******************************************************************************************

File Name       :   CSLAB_CUSTOMER_SENTIMENT_ANALYSIS
Purpose 	:   A Program for Customer Sentiment Analysis in R
Author		:   Durga Prasad
Reviewer 	:   Jothi Periasamy
Date and Time	:   16/01/2019 15:03 hrs
Version		:   1.0	
Change History 	: 

____________________________________________________________________________________________

	Who				   When 			  Why
____________________________________________________________________________________________


	DP				16/01/2019		    Initital Release 

____________________________________________________________________________________________


/*******************************************************************************************

## Program Description : A Program for Customer Sentiment Analysis in R  

## R Development Environment & Runtime - R Studio, Anaconda, Jupyter

vAR_CSLAB_Month <- c('Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec')

vAR_CSLAB_Positive_Sentiment_Jeans_Percent <- c(91, 89, 87, 92, 95, 90, 89, 91, 93, 90, 95, 92)

vAR_CSLAB_Negative_Sentiment_Jeans_Percent <- c(10, 12, 8, 14, 11, 9, 15, 21, 18, 15, 22, 25)

vAR_CSLAB_Nuetral_Sentiment_Jeans_Percent <- c(34, 28, 34, 38, 30, 32, 41, 37, 34, 38, 40, 37)

vAR_CSLAB_sample1 <- data.frame(vAR_CSLAB_Year, vAR_CSLAB_Positive_Sentiment_Jeans_Percent)

vAR_CSLAB_sample1

vAR_CSLAB_sample2 <- data.frame(vAR_CSLAB_Year, vAR_CSLAB_Negative_Sentiment_Jeans_Percent)

vAR_CSLAB_sample2

vAR_CSLAB_sample3 <- data.frame(vAR_CSLAB_Year, vAR_CSLAB_Nuetral_Sentiment_Jeans_Percent)

vAR_CSLAB_sample1$vAR_CSLAB_Year <- vAR_CSLAB_sample1$vAR_CSLAB_Year

plot(vAR_CSLAB_sample1$vAR_CSLAB_Year, vAR_CSLAB_Positive_Sentiment_Jeans_Percent, type="b")

plot(vAR_CSLAB_sample1$vAR_CSLAB_Year, vAR_CSLAB_Negative_Sentiment_Jeans_Percent, type="b")

plot(vAR_CSLAB_sample1$vAR_CSLAB_Year, vAR_CSLAB_Nuetral_Sentiment_Jeans_Percent, type="b")

vAR_CSLAB_sample1$vAR_CSLAB_Year <- vAR_CSLAB_sample1$vAR_CSLAB_Year - 2005

vAR_CSLAB_fit1 <- lm(vAR_CSLAB_sample1$vAR_CSLAB_Positive_Sentiment_Jeans_Percent ~ vAR_CSLAB_sample1$vAR_CSLAB_Year)

#vAR_CSLAB_fit2 <- lm(vAR_CSLAB_sample1$vAR_CSLAB_Negative_Sentiment_Jeans_Percent ~ vAR_CSLAB_sample1$vAR_CSLAB_Year + I(vAR_CSLAB_sample1$vAR_CSLAB_Year^2))

#vAR_CSLAB_fit3 <- lm(vAR_CSLAB_sample1$vAR_CSLAB_Nuetral_Sentiment_Jeans_Percent ~ vAR_CSLAB_sample1$vAR_CSLAB_Year + I(vAR_CSLAB_sample1$vAR_CSLAB_Year^2) + I(vAR_CSLAB_sample1$vAR_CSLAB_Year^3))

summary(vAR_CSLAB_fit2)

summary(vAR_CSLAB_fit3)

anova(vAR_CSLAB_fit2, vAR_CSLAB_fit3)

plot(vAR_CSLAB_sample1$vAR_CSLAB_Year, vAR_CSLAB_sample1$vAR_CSLAB_Positive_Sentiment_Jeans_Percent, type="l", lwd=3)

plot(vAR_CSLAB_sample1$vAR_CSLAB_Year, vAR_CSLAB_sample1$vAR_CSLAB_Negative_Sentiment_Jeans_Percent, type="l", lwd=3)

plot(vAR_CSLAB_sample1$vAR_CSLAB_Year, vAR_CSLAB_sample1$vAR_CSLAB_Nuetral_Sentiment_Jeans_Percent, type="l", lwd=3)

#points(vAR_CSLAB_sample1$vAR_CSLAB_Year, predict(vAR_CSLAB_fit2), type="l", col="red", lwd=2)

vAR_CSLAB_Month <- c(2010, 2011, 2012, 2012, 2014, 2015)

vAR_CSLAB_Mentions_Jeans <- c(60, 55, 54, 56, 58, 56)

vAR_CSLAB_Impressions_Jeans <- c(80, 83, 78, 84, 75, 82)

plot(vAR_CSLAB_Mentions_Jeans)

plot(vAR_CSLAB_Impressions_Jeans)

/*******************************************************************************************
  Disclaimer.

      We are providing this code block strictly for learning and researching, this is not a 
production ready code. We have no liability on this particular code under any circumstances; 
users should use this code on their own risk. All software, hardware and othr products that 
are referenced in these materials belong to the respective vendor who developed or who owns 
this product.

/*******************************************************************************************