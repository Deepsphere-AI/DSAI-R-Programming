
/*******************************************************************************************

File Name       :   CSLAB_RANDOM_FOREST_V1
Purpose 	:   A Program for Classification using Random Forest Classifier in R
Author		:   Durga Prasad
Reviewer 	:   Jothi Periasamy
Date and Time	:   15/01/2019 11:22 hrs
Version		:   1.0	
Change History 	: 

____________________________________________________________________________________________

	Who				   When 			  Why
____________________________________________________________________________________________


	DP				15/01/2019		  Initital Release 

____________________________________________________________________________________________


/*******************************************************************************************

## Program Description : A Program for Classification using Random Forest Classifier in R

## R Development Environment & Runtime - R Studio, Anaconda, Jupyter Notebook 
  
vAR_CSLAB_ind <- sample(2, nrow(iris), replace=TRUE, prob=c(0.7, 0.3))

vAR_CSLAB_trainData <- iris[ind==1,]

vAR_CSLAB_testData <- iris[ind==2,]

library(randomForest)

vAR_CSLAB_rf <- randomForest(Species ~ ., data=trainData, ntree=100, proximity=TRUE)

table(predict(vAR_CSLAB_rf), vAR_CSLAB_trainData$Species)

print(vAR_CSLAB_rf)

plot(vAR_CSLAB_rf)

/*******************************************************************************************
  
Disclaimer.

      We are providing this code block strictly for learning and researching, this is not a 
production ready code. We have no liability on this particular code under any circumstances; 
users should use this code on their own risk. All software, hardware and other products that 
are referenced in these materials belong to the respective vendor who developed or who owns 
this product.

/*******************************************************************************************

	