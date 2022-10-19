
/*******************************************************************************************

File Name       :   CSLAB_RIDGE_REGRESSION_V1
Purpose 	:   A Program for Ridge Regression in R
Author		:   Durga Prasad
Reviewer 	:   Jothi Periasamy
Date and Time	:   15/01/2019 15:38 hrs
Version		:   1.0	
Change History 	: 

____________________________________________________________________________________________

	Who				   When 			  Why
____________________________________________________________________________________________


	DP				12/18/2015		    Initital Release 

____________________________________________________________________________________________


/*******************************************************************************************

## Program Description : A Program for Ridge Regression in R

## R Development Environment & Runtime - R Studio, Anaconda, Jupyter Notebook 

vAR_CSLAB_swiss <- datasets::swiss

vAR_CSLAB_x <- model.matrix(Fertility~., swiss)[,-1]

vAR_CSLAB_y <- swiss$Fertility

vAR_CSLAB_lambda <- 10^seq(10, -2, length = 100)

install.packages("glmnet")
library("glmnet")

set.seed(489)

vAR_CSLAB_train = sample(1:nrow(vAR_CSLAB_x), nrow(vAR_CSLAB_x)/2)

vAR_CSLAB_test = (-vAR_CSLAB_train)

vAR_CSLAB_ytest = y[vAR_CSLAB_test]

vAR_CSLAB_swisslm <- lm(Fertility~., data = vAR_CSLAB_swiss)

coef(vAR_CSLAB_swisslm)

vAR_CSLAB_ridge.mod <- glmnet(vAR_CSLAB_x, vAR_CSLAB_y, alpha = 0, lambda = lambda)
#predict(ridge.mod, s = 0, exact = T, type = 'coefficients')[1:6,]

vAR_CSLAB_swisslm <- lm(Fertility~., data = vAR_CSLAB_swiss, subset = vAR_CSLAB_train)

vAR_CSLAB_ridge.mod <- glmnet(vAR_CSLAB_x[vAR_CSLAB_train,], vAR_CSLAB_y[vAR_CSLAB_train], alpha = 0, lambda = lambda)

#find the best lambda from our list via cross-validation

vAR_CSLAB_cv.out <- cv.glmnet(vAR_CSLAB_x[vAR_CSLAB_train,], vAR_CSLAB_y[vAR_CSLAB_train], alpha = 0)

vAR_CSLAB_bestlam <- vAR_CSLAB_cv.out$lambda.min

vAR_CSLAB_ridge.pred <- predict(vAR_CSLAB_ridge.mod, s = vAR_CSLAB_bestlam, newx = vAR_CSLAB_x[vAR_CSLAB_test,])

vAR_CSLAB_s.pred <- predict(vAR_CSLAB_swisslm, newdata = swiss[vAR_CSLAB_test,])

mean((vAR_CSLAB_s.pred-vAR_CSLAB_ytest)^2)

vAR_CSLAB_out = glmnet(vAR_CSLAB_x[vAR_CSLAB_train,],vAR_CSLAB_y[vAR_CSLAB_train],alpha = 0)

predict(vAR_CSLAB_ridge.mod, type = "coefficients", s = vAR_CSLAB_bestlam)[1:6,]



/*******************************************************************************************
  Disclaimer.

      We are providing this code block strictly for learning and researching, this is not a 
production ready code. We have no liability on this particular code under any circumstances; 
users should use this code on their own risk. All software, hardware and othr products that 
are referenced in these materials belong to the respective vendor who developed or who owns 
this product.

/*******************************************************************************************