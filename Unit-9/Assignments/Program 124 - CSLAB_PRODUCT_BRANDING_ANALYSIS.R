
/*******************************************************************************************

File Name       :   CSLAB_PRODUCT_BRANDING_ANALYSIS
Purpose 	:   A Program for Product Branding Analysis in R  
Author		:   Durga Prasad
Reviewer 	:   Jothi Periasamy
Date and Time	:   16/01/2019 15:53 hrs
Version		:   1.0	
Change History 	: 

____________________________________________________________________________________________

	Who				   When 			  Why
____________________________________________________________________________________________


	DP				16/01/2019		    Initital Release 

____________________________________________________________________________________________


/*******************************************************************************************

## Program Description : A Program for Product Branding Analysis in R  

## R Development Environment & Runtime - R Studio, Anaconda, Jupyter  

vAR_CSLAB_Year <- c(2011, 2012, 2013, 2014, 2015)

vAR_CSLAB_Page_Visits_2015 <- c(1564315, 1654651, 2454142, 2482557, 3045415)

vAR_CSLAB_Visitors_2015 <- c(7542, 8143, 9124, 11635, 15461)

vAR_CSLAB_Pageviews_2015 <- c(45445, 43221, 54342, 52316, 58131)

vAR_CSLAB_sample1 <- data.frame(vAR_CSLAB_Year, vAR_CSLAB_Page_Visits_2015, vAR_CSLAB_Visitors_2015, vAR_CSLAB_Pageviews_2015)

plot(vAR_CSLAB_Page_Visits_2015) 

plot(vAR_CSLAB_Visitors_2015) 
     
plot(vAR_CSLAB_Pageviews_2015)

vAR_CSLAB_sample1$Year <- vAR_CSLAB_sample1$Year

vAR_CSLAB_fit1 <- lm(vAR_CSLAB_sample1$vAR_CSLAB_Page_Visits_2015 ~ vAR_CSLAB_sample1$vAR_CSLAB_Year)

vAR_CSLAB_fit2 <- lm(vAR_CSLAB_sample1$vAR_CSLAB_Page_Visits_2015 ~ vAR_CSLAB_sample1$vAR_CSLAB_Year + I(vAR_CSLAB_sample1$vAR_CSLAB_Year^2))

vAR_CSLAB_fit3 <- lm(vAR_CSLAB_sample1$vAR_CSLAB_Page_Visits_2015 ~ vAR_CSLAB_sample1$vAR_CSLAB_Year + I(vAR_CSLAB_sample1$vAR_CSLAB_Year^2) + I(vAR_CSLAB_sample1$vAR_CSLAB_Year^3))

summary(vAR_CSLAB_fit2)

summary(vAR_CSLAB_fit3)

anova(vAR_CSLAB_fit2, vAR_CSLAB_fit3)

plot(vAR_CSLAB_Year, vAR_CSLAB_Page_Visits_2015, type="l", lwd=3)

vAR_CSLAB_fit1 <- lm(vAR_CSLAB_sample1$vAR_CSLAB_Visitors_2015 ~ vAR_CSLAB_sample1$vAR_CSLAB_Year)

vAR_CSLAB_fit2 <- lm(vAR_CSLAB_sample1$vAR_CSLAB_Visitors_2015 ~ vAR_CSLAB_sample1$vAR_CSLAB_Year + I(vAR_CSLAB_sample1$vAR_CSLAB_Year^2))

vAR_CSLAB_fit3 <- lm(vAR_CSLAB_sample1$vAR_CSLAB_Visitors_2015 ~ vAR_CSLAB_sample1$vAR_CSLAB_Year + I(vAR_CSLAB_sample1$vAR_CSLAB_Year^2) + I(vAR_CSLAB_sample1$vAR_CSLAB_Year^3))

summary(vAR_CSLAB_fit2)

summary(vAR_CSLAB_fit3)

anova(vAR_CSLAB_fit2, vAR_CSLAB_fit3)

plot(vAR_CSLAB_Year, vAR_CSLAB_Visitors_2015, type="l", lwd=3)

points(vAR_CSLAB_Year, predict(vAR_CSLAB_fit2), type="l", col="red", lwd=2)

vAR_CSLAB_fit1 <- lm(vAR_CSLAB_sample1$vAR_CSLAB_Pageviews_2015 ~ vAR_CSLAB_sample1$vAR_CSLAB_Year)
           
vAR_CSLAB_fit2 <- lm(vAR_CSLAB_sample1$vAR_CSLAB_Pageviews_2015 ~ vAR_CSLAB_sample1$vAR_CSLAB_Year + I(vAR_CSLAB_sample1$vAR_CSLAB_Year^2))
                      
vAR_CSLAB_fit3 <- lm(vAR_CSLAB_sample1$vAR_CSLAB_Pageviews_2015 ~ vAR_CSLAB_sample1$vAR_CSLAB_Year + I(vAR_CSLAB_sample1$vAR_CSLAB_Year^2) + I(vAR_CSLAB_sample1$vAR_CSLAB_Year^3))
                                 
summary(vAR_CSLAB_fit2)
                                 
summary(vAR_CSLAB_fit3)

anova(vAR_CSLAB_fit2, vAR_CSLAB_fit3)
                                 
plot(vAR_CSLAB_Year, vAR_CSLAB_Pageviews_2015, type="l", lwd=3)
                                      
points(vAR_CSLAB_Year, predict(vAR_CSLAB_fit2), type="l", col="red", lwd=2)

/*******************************************************************************************
  Disclaimer.

      We are providing this code block strictly for learning and researching, this is not a 
production ready code. We have no liability on this particular code under any circumstances; 
users should use this code on their own risk. All software, hardware and othr products that 
are referenced in these materials belong to the respective vendor who developed or who owns 
this product.

/*******************************************************************************************