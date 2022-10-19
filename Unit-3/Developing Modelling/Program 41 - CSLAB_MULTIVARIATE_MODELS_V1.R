
/*******************************************************************************************

File Name       :   CSLAB_MULTIVARIATE_MODELS_V1
Purpose 	:   A Program for Multivariate Models in R
Author		:   Durga Prasad
Reviewer 	:   Jothi Periasamy
Date and Time	:   14/01/2019 19:59 hrs
Version		:   1.0	
Change History 	: 

____________________________________________________________________________________________

	Who				   When 			  Why
____________________________________________________________________________________________


	DP				14/01/2019		  Initital Release 

____________________________________________________________________________________________


/*******************************************************************************************

## Program Description : A Program for Multivariate Models in R

## R Development Environment & Runtime - R Studio, Anaconda, Jupyter Notebook

vAR_CSLAB_N <- 100              

vAR_CSLAB_c <- rbinom(vAR_CSLAB_N, 1, 0.2)

vAR_CSLAB_H <- rnorm(vAR_CSLAB_N, -10, 2)                

vAR_CSLAB_A <- -1.4*vAR_CSLAB_c + 0.6*vAR_CSLAB_H + rnorm(vAR_CSLAB_N, 0, 3) 

vAR_CSLAB_B <-  1.4*vAR_CSLAB_c - 0.6*vAR_CSLAB_H + rnorm(vAR_CSLAB_N, 0, 3)

vAR_CSLAB_Y <- cbind(vAR_CSLAB_A, vAR_CSLAB_B)

vAR_CSLAB_my.model <- lm(vAR_CSLAB_Y ~ vAR_CSLAB_c + vAR_CSLAB_H)

summary(manova(vAR_CSLAB_my.model)) 

/*******************************************************************************************
  
Disclaimer.

      We are providing this code block strictly for learning and researching, this is not a 
production ready code. We have no liability on this particular code under any circumstances; 
users should use this code on their own risk. All software, hardware and other products that 
are referenced in these materials belong to the respective vendor who developed or who owns 
this product.

/*******************************************************************************************

