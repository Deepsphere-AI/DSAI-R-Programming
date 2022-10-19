
/*******************************************************************************************

File Name       :   CSLAB_POLYNOMIAL_REGRESSION_V1
Purpose 	:   A Program for Polynomial Regression in R
Author		:   Durga Prasad
Reviewer 	:   Jothi Periasamy
Date and Time	:   15/01/2019 14:56 hrs
Version		:   1.0	
Change History 	: 

____________________________________________________________________________________________

	Who				   When 			  Why
____________________________________________________________________________________________


	DP				15/01/2019		    Initital Release 

____________________________________________________________________________________________


/*******************************************************************************************

## Program Description : A Program for Polynomial Regression in R

## R Development Environment & Runtime - R Studio, Anaconda, Jupyter Notebook 

vAR_CSLAB_Year <- c(1959, 1960, 1961, 1962, 1963, 1964, 1965, 1966, 1967, 1968, 1969)

vAR_CSLAB_Population <- c(4835, 4970, 5085, 5160, 5310, 5260, 5235, 5255, 5235, 5210, 5175)

sample1 <- data.frame(Year, Population)

#sample1

sample1$Year <- sample1$Year - 1964

plot(sample1$Year, sample1$Population, type="b")

vAR_CSLAB_fit1 <- lm(sample1$Population ~ sample1$Year)

vAR_CSLAB_fit2 <- lm(sample1$Population ~ sample1$Year + I(sample1$Year^2))

vAR_CSLAB_fit3 <- lm(sample1$Population ~ sample1$Year + I(sample1$Year^2) + I(sample1$Year^3))

summary(vAR_CSLAB_fit2)

summary(vAR_CSLAB_fit3)

anova(vAR_CSLAB_fit2, vAR_CSLAB_fit3)

plot(sample1$Year, sample1$Population, type="l", lwd=3)

points(sample1$Year, predict(vAR_CSLAB_fit2), type="l", col="red", lwd=2)



/*******************************************************************************************
  Disclaimer.

      We are providing this code block strictly for learning and researching, this is not a 
production ready code. We have no liability on this particular code under any circumstances; 
users should use this code on their own risk. All software, hardware and othr products that 
are referenced in these materials belong to the respective vendor who developed or who owns 
this product.

/*******************************************************************************************