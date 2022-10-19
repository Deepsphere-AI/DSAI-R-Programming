
/*******************************************************************************************

File Name       :   CSLAB_STEPWISE_REGRESSION_V1
Purpose 	:   A Program for Stepwise Regression in R
Author		:   Durga Prasad
Reviewer 	:   Jothi Periasamy
Date and Time	:   15/01/2019 15:17 hrs
Version		:   1.0	
Change History 	: 

____________________________________________________________________________________________

	Who				   When 			  Why
____________________________________________________________________________________________


	DP				15/01/2019		    Initital Release 

____________________________________________________________________________________________


/*******************************************************************************************

## Program Description : A Program for Stepwise Regression in R

## R Development Environment & Runtime - R Studio, Anaconda, Jupyter Notebook 

set.seed(100)

vAR_CSLAB_x1 <- runif(100,0,1)

vAR_CSLAB_x2 <- as.factor(sample(letters[1:3],100,replace=T))

vAR_CSLAB_y <- vAR_CSLAB_x1+vAR_CSLAB_x1*(vAR_CSLAB_x2=="a")+2*(vAR_CSLAB_x2=="b")+rnorm(100)

summary(lm(vAR_CSLAB_y~vAR_CSLAB_x1*vAR_CSLAB_x2))

/*******************************************************************************************
  Disclaimer.

      We are providing this code block strictly for learning and researching, this is not a 
production ready code. We have no liability on this particular code under any circumstances; 
users should use this code on their own risk. All software, hardware and othr products that 
are referenced in these materials belong to the respective vendor who developed or who owns 
this product.

/*******************************************************************************************