
/*******************************************************************************************

File Name       :   CSLAB_VARIABLE_SELECTION_V1
Purpose 	:   A Program for Variable Selection in R
Author		:   Durga Prasad
Reviewer 	:   Jothi Periasamy
Date and Time	:   15/01/2019 16:19 hrs
Version		:   1.0	
Change History 	: 

____________________________________________________________________________________________

	Who				   When 			  Why
____________________________________________________________________________________________


	DP				04/02/2015		  Initital Release 

____________________________________________________________________________________________


/*******************************************************************************************

## Program Description : A Program for Variable Selection in R

## R Development Environment & Runtime - R Studio, Anaconda, Jupyter Notebook

library(MASS)

data(swiss)

str(swiss)

vAR_CSLAB_lm <- lm(Fertility ~ ., data = swiss)

vAR_CSLAB_lm$coefficients

vAR_CSLAB_st1 <- stepAIC(vAR_CSLAB_lm, direction = "both")

vAR_CSLAB_st2 <- stepAIC(vAR_CSLAB_lm, direction = "forward")

vAR_CSLAB_st3 <- stepAIC(vAR_CSLAB_lm, direction = "backward")

summary(vAR_CSLAB_st1)

summary(vAR_CSLAB_st2)

summary(vAR_CSLAB_st3)


/*******************************************************************************************
  
Disclaimer.

      We are providing this code block strictly for learning and researching, this is not a 
production ready code. We have no liability on this particular code under any circumstances; 
users should use this code on their own risk. All software, hardware and other products that 
are referenced in these materials belong to the respective vendor who developed or who owns 
this product.

/*******************************************************************************************

