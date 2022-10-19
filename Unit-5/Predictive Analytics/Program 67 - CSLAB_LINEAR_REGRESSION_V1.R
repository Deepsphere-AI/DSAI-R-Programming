
/*******************************************************************************************

File Name       :   CSLAB_LINEAR_REGRESSION_V1
Purpose 	:   A Program for Linear Regression in R
Author		:   Durga Prasad
Reviewer 	:   Jothi Periasamy
Date and Time	:   15/01/2019 13:29 hrs
Version		:   1.0	
Change History 	: 

____________________________________________________________________________________________

	Who				   When 			  Why
____________________________________________________________________________________________


	DP				12/18/2015		    Initital Release 

____________________________________________________________________________________________


/*******************************************************************************************

## Program Description : A Program for Linear Regression in R

## R Development Environment & Runtime - R Studio, Anaconda, Jupyter Notebook 

install.packages("car")

library("car")

vAR_CSLAB_linearMod <- lm(dist ~ speed, data=cars)  # build linear regression model on full data

print(vAR_CSLAB_linearMod)

lm(formula = dist ~ speed, data = cars)

set.seed(100)  # setting seed to reproduce results of random sampling

vAR_CSLAB_trainingRowIndex <- sample(1:nrow(cars), 0.8*nrow(cars))  # row indices for training data

vAR_CSLAB_trainingData <- cars[vAR_CSLAB_trainingRowIndex, ]  # model training data

vAR_CSLAB_testData  <- cars[-vAR_CSLAB_trainingRowIndex, ]   # test data

vAR_CSLAB_lmMod <- lm(dist ~ speed, data=vAR_CSLAB_trainingData)  # build the model

vAR_CSLAB_distPred <- predict(vAR_CSLAB_lmMod, vAR_CSLAB_testData)  # predict distance

summary (vAR_CSLAB_lmMod)

vAR_CSLAB_actuals_preds <- data.frame(cbind(actuals=vAR_CSLAB_testData$dist, predicteds=vAR_CSLAB_distPred))  # make actuals_predicted

vAR_CSLAB_correlation_accuracy <- cor(vAR_CSLAB_actuals_preds)  # 82.7%

head(vAR_CSLAB_actuals_preds)

/*******************************************************************************************
  Disclaimer.

      We are providing this code block strictly for learning and researching, this is not a 
production ready code. We have no liability on this particular code under any circumstances; 
users should use this code on their own risk. All software, hardware and othr products that 
are referenced in these materials belong to the respective vendor who developed or who owns 
this product.

/*******************************************************************************************