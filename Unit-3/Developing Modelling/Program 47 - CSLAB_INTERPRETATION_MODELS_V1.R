
/*******************************************************************************************

File Name       :   CSLAB_INTERPRETATION_MODELS_V1
Purpose 	:   A Program for Interpretation Models in in R
Author		:   Durga Prasad
Reviewer 	:   Jothi Periasamy
Date and Time	:   14/01/2019 22:12 hrs
Version		:   1.0	
Change History 	: 

____________________________________________________________________________________________

	Who				   When 			  Why
____________________________________________________________________________________________


	DP				14/01/2019		  Initital Release 

____________________________________________________________________________________________


/*******************************************************************************************   
  
## Program Description : A Program for Interpretation Models in R

## R Development Environment & Runtime - R Studio, Anaconda, Jupyter Notebook

summary(cars)

plot(cars, col='blue', pch=20, cex=2, main="Relationship between Speed and Stopping Distance for 50 Cars", xlab="Speed in mph", ylab="Stopping Distance in feet")

set.seed(122)

vAR_CSLAB_speed.c = scale(cars$speed, center=TRUE, scale=FALSE)

#vAR_CSLAB_mod1 = lm(formula = dist ~ speed.vAR_CSLAB_c, data = cars)

summary(vAR_CSLAB_mod1)

/*******************************************************************************************
  
Disclaimer.

      We are providing this code block strictly for learning and researching, this is not a 
production ready code. We have no liability on this particular code under any circumstances; 
users should use this code on their own risk. All software, hardware and other products that 
are referenced in these materials belong to the respective vendor who developed or who owns 
this product.

/*******************************************************************************************

