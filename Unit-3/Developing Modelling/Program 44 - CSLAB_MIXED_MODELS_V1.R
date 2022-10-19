
/*******************************************************************************************

File Name       :   CSLAB_MIXED_MODELS_V1
Purpose 	:   A Program for Mixed Models in R in R
Author		:   Durga Prasad
Reviewer 	:   Jothi Periasamy
Date and Time	:   14/01/2019 21:08 hrs
Version		:   1.0	
Change History 	: 

____________________________________________________________________________________________

	Who				   When 			  Why
____________________________________________________________________________________________


	DP				14/01/2019		  Initital Release 

____________________________________________________________________________________________


/*******************************************************************************************

## Program Description : A Program for Mixed Models in R

## R Development Environment & Runtime - R Studio, Anaconda, Jupyter Notebook
  
library(MASS)

data(oats)

names(oats) = c('block', 'variety', 'nitrogen', 'yield')

oats$mainplot = oats$variety

oats$subplot = oats$nitrogen

library(nlme)

vAR_CSLAB_m1.nlme = lme(yield ~ variety*nitrogen,
                      random = ~ 1|block/mainplot,
                      data = oats)
 
summary(vAR_CSLAB_m1.nlme)

library(lme4)

vAR_CSLAB_m1.lme4 = lmer(yield ~ variety*nitrogen + (1|block/mainplot),
                       data = oats)
 
summary(vAR_CSLAB_m1.lme4)

anova(vAR_CSLAB_m1.lme4)

library(asreml)

vAR_CSLAB_m1.asreml = asreml(yield ~ variety*nitrogen,
                           random = ~ block/mainplot,
                           data = oats)
 
summary(vAR_CSLAB_m1.asreml)$varcomp


/*******************************************************************************************
  
Disclaimer.

      We are providing this code block strictly for learning and researching, this is not a 
production ready code. We have no liability on this particular code under any circumstances; 
users should use this code on their own risk. All software, hardware and other products that 
are referenced in these materials belong to the respective vendor who developed or who owns 
this product.

/*******************************************************************************************

