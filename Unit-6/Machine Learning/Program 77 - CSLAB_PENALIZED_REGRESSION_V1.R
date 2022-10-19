  
/*******************************************************************************************

File Name       :   CSLAB_PENALIZED_REGRESSION_V1
Purpose 	:   A Program for Penalized Selection in R
Author		:   Durga Prasad
Reviewer 	:   Jothi Periasamy
Date and Time	:   15/01/2019 17:12 hrs
Version		:   1.0	
Change History 	: 

____________________________________________________________________________________________

	Who				   When 			  Why
____________________________________________________________________________________________


	DP				15/01/2019		  Initital Release 

____________________________________________________________________________________________


/*******************************************************************************************

## Program Description : A Program for Penalized Selection in R

## R Development Environment & Runtime - R Studio, Anaconda, Jupyter Notebook

# load the package

library(glmnet)

# load data

data(longley)

vAR_CSLAB_x <- as.matrix(longley[,1:6])

vAR_CSLAB_y <- as.matrix(longley[,7])

# fit model
 
vAR_CSLAB_fit <- glmnet(vAR_CSLAB_x, vAR_CSLAB_y, family="gaussian", alpha=0, lambda=0.001)
 
# summarize the fit
 
summary(vAR_CSLAB_fit)

# make predictions

vAR_CSLAB_predictions <- predict(vAR_CSLAB_fit, vAR_CSLAB_x, type="link")

# summarize accuracy

vAR_CSLAB_rmse <- mean((vAR_CSLAB_y - vAR_CSLAB_predictions)^2)

print(vAR_CSLAB_rmse)

/*******************************************************************************************
  
Disclaimer.

      We are providing this code block strictly for learning and researching, this is not a 
production ready code. We have no liability on this particular code under any circumstances; 
users should use this code on their own risk. All software, hardware and other products that 
are referenced in these materials belong to the respective vendor who developed or who owns 
this product.

/*******************************************************************************************

