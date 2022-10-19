
/*******************************************************************************************

File Name       :   CSLAB_LINEAR_MODELS_V1
Purpose 	:   A Program for Linear Modelling in R
Author		:   Durga Prasad
Reviewer 	:   Jothi Periasamy
Date and Time	:   14/01/2019 18:37 hrs
Version		:   1.0	
Change History 	: 

____________________________________________________________________________________________

	Who				   When 			  Why
____________________________________________________________________________________________


	DP				14/01/2019		  Initital Release 

____________________________________________________________________________________________


/*******************************************************************************************
  
## Program Description : A Program for Linear Modelling in R

## R Development Environment & Runtime - R Studio, Anaconda, Jupyter Notebook

vAR_CSLAB_linearMod <- lm(dist ~ speed, data=cars)  # build linear regression model on full data

print(vAR_CSLAB_linearMod)

vAR_CSLAB_modelSummary <- summary(vAR_CSLAB_linearMod)  # capture model summary as an object

vAR_CSLAB_modelCoeffs <- vAR_CSLAB_modelSummary$coefficients  # model coefficients

vAR_CSLAB_beta.estimate <- vAR_CSLAB_modelCoeffs["speed", "Estimate"]  # get beta estimate for speed

vAR_CSLAB_std.error <- vAR_CSLAB_modelCoeffs["speed", "Std. Error"]  # get std.error for speed

vAR_CSLAB_t_value <- vAR_CSLAB_beta.estimate/vAR_CSLAB_std.error  # calc t statistic

vAR_CSLAB_p_value <- 2*pt(-abs(vAR_CSLAB_t_value), df=nrow(cars)-ncol(cars))  # calc p Value

vAR_CSLAB_f_statistic <- vAR_CSLAB_linearMod$fstatistic[1]  # fstatistic

vAR_CSLAB_f <- summary(vAR_CSLAB_linearMod)$vAR_CSLAB_fstatistic  # parameters for model p-value calc

vAR_CSLAB_model_p <- pf(f[1], f[2], f[3], lower=FALSE)


/*******************************************************************************************
  
Disclaimer.

      We are providing this code block strictly for learning and researching, this is not a 
production ready code. We have no liability on this particular code under any circumstances; 
users should use this code on their own risk. All software, hardware and other products that 
are referenced in these materials belong to the respective vendor who developed or who owns 
this product.

/*******************************************************************************************

