
/*******************************************************************************************

File Name       :   CSLAB_LOGISTIC_REGRESSION_V1
Purpose 	:   A Program for Logistic Regression in R
Author		:   Durga Prasad
Reviewer 	:   Jothi Periasamy
Date and Time	:   15/01/2019 14:37 hrs
Version		:   1.0	
Change History 	: 

____________________________________________________________________________________________

	Who				   When 			  Why
____________________________________________________________________________________________


	DP				15/01/2019		    Initital Release 

____________________________________________________________________________________________


/*******************************************************************************************

## Program Description : A Program for Logistic Regression in R

## R Development Environment & Runtime - R Studio, Anaconda, Jupyter Notebook 

library("MASS")

data(menarche)

str(menarche)

vAR_CSLAB_glm.out = glm(cbind(Menarche, Total-Menarche) ~ Age, family=binomial(logit), data=menarche)

plot(Menarche/Total ~ Age, data=menarche)
  
lines(menarche$Age, vAR_CSLAB_glm.out$fitted, type="l", col="red")

title(main="Menarche Data with Fitted Logistic Regression Line")

/*******************************************************************************************
  Disclaimer.

      We are providing this code block strictly for learning and researching, this is not a 
production ready code. We have no liability on this particular code under any circumstances; 
users should use this code on their own risk. All software, hardware and othr products that 
are referenced in these materials belong to the respective vendor who developed or who owns 
this product.

/*******************************************************************************************