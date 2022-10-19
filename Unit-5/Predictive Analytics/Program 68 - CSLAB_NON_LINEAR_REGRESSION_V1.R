
/*******************************************************************************************

File Name       :   CSLAB_NON_LINEAR_REGRESSION_V1
Purpose 	:   A Program for Non Linear Regression in R
Author		:   Durga Prasad
Reviewer 	:   Jothi Periasamy
Date and Time	:   15/01/2019 14:18 hrs
Version		:   1.0	
Change History 	: 

____________________________________________________________________________________________

	Who				   When 			  Why
____________________________________________________________________________________________


	DP				15/01/2019		    Initital Release 

____________________________________________________________________________________________


/*******************************************************************************************

## Program Description : A Program for Non Linear Regression in R

## R Development Environment & Runtime - R Studio, Anaconda, Jupyter Notebook 

vAR_CSLAB_n <- 100

vAR_CSLAB_x <- seq(vAR_CSLAB_n)

vAR_CSLAB_y <- rnorm(vAR_CSLAB_n, 50 + 30 * vAR_CSLAB_x^(-0.2), 1)

vAR_CSLAB_Data <- data.frame(vAR_CSLAB_x, vAR_CSLAB_y)

plot(vAR_CSLAB_y ~ vAR_CSLAB_x, vAR_CSLAB_Data)

# fit a loess line

vAR_CSLAB_loess_fit <- loess(vAR_CSLAB_y ~ vAR_CSLAB_x, vAR_CSLAB_Data)

lines(vAR_CSLAB_Data$vAR_CSLAB_x, predict(vAR_CSLAB_loess_fit), col = "blue")

# fit a non-linear regression

vAR_CSLAB_nls_fit <- nls(vAR_CSLAB_y ~ a + b * vAR_CSLAB_x^(-c), vAR_CSLAB_Data, start = list(a = 80, b = 20, 
                                                      c = 0.2))

lines(vAR_CSLAB_Data$vAR_CSLAB_x, predict(vAR_CSLAB_nls_fit), col = "red")
                   
library(ggplot2)

ggplot(vAR_CSLAB_Data, aes(vAR_CSLAB_x,vAR_CSLAB_y)) + geom_point() + geom_smooth()


/*******************************************************************************************
  Disclaimer.

      We are providing this code block strictly for learning and researching, this is not a 
production ready code. We have no liability on this particular code under any circumstances; 
users should use this code on their own risk. All software, hardware and othr products that 
are referenced in these materials belong to the respective vendor who developed or who owns 
this product.

/*******************************************************************************************