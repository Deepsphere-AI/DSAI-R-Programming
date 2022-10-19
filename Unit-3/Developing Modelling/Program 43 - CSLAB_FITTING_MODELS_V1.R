
/*******************************************************************************************

File Name       :   CSLAB_FITTING_MODELS_V1
Purpose 	:   A Program for Fitting Models in R in R
Author		:   Durga Prasad
Reviewer 	:   Jothi Periasamy
Date and Time	:   14/01/2019 20:42 hrs
Version		:   1.0	
Change History 	: 

____________________________________________________________________________________________

	Who				   When 			  Why
____________________________________________________________________________________________


	DP				14/01/2019		  Initital Release 

____________________________________________________________________________________________


/*******************************************************************************************
  
## Program Description : A Program for Fitting Models in R

## R Development Environment & Runtime - R Studio, Anaconda, Jupyter Notebook

vAR_CSLAB_ctl <- c(4.17,5.58,5.18,6.11,4.50,4.61,5.17,4.53,5.33,5.14)

vAR_CSLAB_trt <- c(4.81,4.17,4.41,3.59,5.87,3.83,6.03,4.89,4.32,4.69)

vAR_CSLAB_group <- gl(2, 10, 20, labels = c("Ctl","Trt"))

vAR_CSLAB_weight <- c(vAR_CSLAB_ctl, vAR_CSLAB_trt)

lm.D9 <- lm(vAR_CSLAB_weight ~ vAR_CSLAB_group)

lm.D90 <- lm(vAR_CSLAB_weight ~ vAR_CSLAB_group - 1) # omitting intercept

anova(lm.D9)

summary(lm.D90)

vAR_CSLAB_opar <- par(mfrow = c(2,2), oma = c(0, 0, 1.1, 0))

plot(lm.D9, las = 1)      # Residuals, Fitted, ...

par(opar)

/*******************************************************************************************
  
Disclaimer.

      We are providing this code block strictly for learning and researching, this is not a 
production ready code. We have no liability on this particular code under any circumstances; 
users should use this code on their own risk. All software, hardware and other products that 
are referenced in these materials belong to the respective vendor who developed or who owns 
this product.

/*******************************************************************************************

