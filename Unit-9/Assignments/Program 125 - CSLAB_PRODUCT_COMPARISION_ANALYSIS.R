
/*******************************************************************************************

File Name       :   CSLAB_PRODUCT_COMPARISION_ANALYSIS
Purpose 	:   A Program for Product Comparision Analysis in R 
Author		:   Durga Prasad
Reviewer 	:   Jothi Periasamy
Date and Time	:   16/01/2019 16:24 hrs
Version		:   1.0	
Change History 	: 

____________________________________________________________________________________________

	Who				   When 			  Why
____________________________________________________________________________________________


	DP				16/01/2019		    Initital Release 

____________________________________________________________________________________________


/*******************************************************************************************
    
## Program Description : A Program for Product Comparision Analysis in R  

## R Development Environment & Runtime - R Studio, Anaconda, Jupyter  

vAR_CSLAB_Year <- c(2011, 2012, 2013, 2014, 2015)

vAR_CSLAB_Promotion_Volume_2015 <- c(156, 165, 245, 248, 304)

vAR_CSLAB_Emails_2015 <- c(7542, 8143, 9124, 11635, 15461)

vAR_CSLAB_Direct_Visits_2015 <- c(445, 432, 543, 523, 581)

vAR_CSLAB_sample1 <- data.frame(vAR_CSLAB_Year, vAR_CSLAB_Promotion_Volume_2015, vAR_CSLAB_Emails_2015, vAR_CSLAB_Direct_Visits_2015)

plot(vAR_CSLAB_Promotion_Volume_2015) 

plot(vAR_CSLAB_Emails_2015) 
     
plot(vAR_CSLAB_Direct_Visits_2015)

vAR_CSLAB_sample1$Year <- vAR_CSLAB_sample1$Year

vAR_CSLAB_fit1 <- lm(vAR_CSLAB_sample1$vAR_CSLAB_Promotion_Volume_2015 ~ vAR_CSLAB_sample1$vAR_CSLAB_Year)

vAR_CSLAB_fit2 <- lm(vAR_CSLAB_sample1$vAR_CSLAB_Promotion_Volume_2015 ~ vAR_CSLAB_sample1$vAR_CSLAB_Year + I(vAR_CSLAB_sample1$vAR_CSLAB_Year^2))

vAR_CSLAB_fit3 <- lm(vAR_CSLAB_sample1$vAR_CSLAB_Promotion_Volume_2015 ~ vAR_CSLAB_sample1$vAR_CSLAB_Year + I(vAR_CSLAB_sample1$vAR_CSLAB_Year^2) + I(vAR_CSLAB_sample1$vAR_CSLAB_Year^3))

summary(vAR_CSLAB_fit2)

summary(vAR_CSLAB_fit3)

anova(vAR_CSLAB_fit2, vAR_CSLAB_fit3)

plot(vAR_CSLAB_Year, vAR_CSLAB_Promotion_Volume_2015, type="l", lwd=3)

vAR_CSLAB_fit1 <- lm(vAR_CSLAB_sample1$vAR_CSLAB_Emails_2015 ~ vAR_CSLAB_sample1$vAR_CSLAB_Year)

vAR_CSLAB_fit2 <- lm(vAR_CSLAB_sample1$vAR_CSLAB_Emails_2015 ~ vAR_CSLAB_sample1$vAR_CSLAB_Year + I(vAR_CSLAB_sample1$vAR_CSLAB_Year^2))

vAR_CSLAB_fit3 <- lm(vAR_CSLAB_sample1$vAR_CSLAB_Emails_2015 ~ vAR_CSLAB_sample1$vAR_CSLAB_Year + I(vAR_CSLAB_sample1$vAR_CSLAB_Year^2) + I(vAR_CSLAB_sample1$vAR_CSLAB_Year^3))

summary(vAR_CSLAB_fit2)

summary(vAR_CSLAB_fit3)

anova(vAR_CSLAB_fit2, vAR_CSLAB_fit3)

plot(vAR_CSLAB_Year, vAR_CSLAB_Emails_2015, type="l", lwd=3)

points(vAR_CSLAB_Year, predict(vAR_CSLAB_fit2), type="l", col="red", lwd=2)

vAR_CSLAB_fit1 <- lm(vAR_CSLAB_sample1$vAR_CSLAB_Direct_Visits_2015 ~ vAR_CSLAB_sample1$vAR_CSLAB_Year)
           
vAR_CSLAB_fit2 <- lm(vAR_CSLAB_sample1$vAR_CSLAB_Direct_Visits_2015 ~ vAR_CSLAB_sample1$vAR_CSLAB_Year + I(vAR_CSLAB_sample1$vAR_CSLAB_Year^2))
                      
vAR_CSLAB_fit3 <- lm(vAR_CSLAB_sample1$vAR_CSLAB_Direct_Visits_2015 ~ vAR_CSLAB_sample1$vAR_CSLAB_Year + I(vAR_CSLAB_sample1$vAR_CSLAB_Year^2) + I(vAR_CSLAB_sample1$vAR_CSLAB_Year^3))
                                 
summary(vAR_CSLAB_fit2)
                                 
summary(vAR_CSLAB_fit3)

anova(vAR_CSLAB_fit2, vAR_CSLAB_fit3)
                                 
plot(vAR_CSLAB_Year, vAR_CSLAB_Direct_Visits_2015, type="l", lwd=3)
                                      
points(vAR_CSLAB_Year, predict(vAR_CSLAB_fit2), type="l", col="red", lwd=2)


/*******************************************************************************************
  Disclaimer.

      We are providing this code block strictly for learning and researching, this is not a 
production ready code. We have no liability on this particular code under any circumstances; 
users should use this code on their own risk. All software, hardware and othr products that 
are referenced in these materials belong to the respective vendor who developed or who owns 
this product.

/*******************************************************************************************