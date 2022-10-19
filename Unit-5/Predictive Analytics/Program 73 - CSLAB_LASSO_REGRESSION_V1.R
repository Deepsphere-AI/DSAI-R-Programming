
/*******************************************************************************************

File Name       :   CSLAB_LASSO_REGRESSION_V1
Purpose 	:   A Program for Lasso Regression in R
Author		:   Durga Prasad
Reviewer 	:   Jothi Periasamy
Date and Time	:   15/01/2019 15:59 hrs
Version		:   1.0	
Change History 	: 

____________________________________________________________________________________________

	Who				   When 			  Why
____________________________________________________________________________________________


	DP				15/01/2019		    Initital Release 

____________________________________________________________________________________________


/*******************************************************************************************

## Program Description : A Program for Lasso Regression in R

## R Development Environment & Runtime - R Studio, Anaconda, Jupyter Notebook 

library(glmnet)

vAR_CSLAB_age <- c(4,8,7,12,6,9,10,14,7) 

vAR_CSLAB_gender <- c(1,0,1,1,1,0,1,0,0) ; 

vAR_CSLAB_gender<-as.factor(gender)

vAR_CSLAB_bmi_p <- c(0.86,0.45,0.99,0.84,0.85,0.67,0.91,0.29,0.88) 

vAR_CSLAB_m_edu <- c(0,1,1,2,2,3,2,0,1); 

vAR_CSLAB_m_edu<-as.factor(vAR_CSLAB_m_edu)

vAR_CSLAB_p_edu <- c(0,2,2,2,2,3,2,0,0);

vAR_CSLAB_p_edu<-as.factor(vAR_CSLAB_p_edu)

vAR_CSLAB_f_color <- c("blue", "blue", "yellow", "red", "red", "yellow", "yellow", "red", "yellow")

vAR_CSLAB_asthma <- c(1,1,0,1,0,0,0,1,1)

vAR_CSLAB_f_color <- as.factor(vAR_CSLAB_f_color)

vAR_CSLAB_xfactors <- model.matrix(asthma ~ vAR_CSLAB_gender + vAR_CSLAB_m_edu + vAR_CSLAB_p_edu + vAR_CSLAB_f_color)[,-1]

vAR_CSLAB_x <- as.matrix(data.frame(vAR_CSLAB_age, vAR_CSLAB_bmi_p, vAR_CSLAB_xfactors))

#note alpha =1 for lasso only and can blend with ridge penalty down to alpha=0 ridge only

vAR_CSLAB_glmmod<-glmnet(vAR_CSLAB_x,y=as.factor(vAR_CSLAB_asthma),alpha=1,family='binomial')

#plot variable coefficients vs. shrinkage parameter lambda.

plot(vAR_CSLAB_glmmod,xvar="lambda")

grid()

/*******************************************************************************************
  Disclaimer.

      We are providing this code block strictly for learning and researching, this is not a 
production ready code. We have no liability on this particular code under any circumstances; 
users should use this code on their own risk. All software, hardware and othr products that 
are referenced in these materials belong to the respective vendor who developed or who owns 
this product.

/*******************************************************************************************