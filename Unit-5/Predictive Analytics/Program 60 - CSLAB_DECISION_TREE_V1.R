
/*******************************************************************************************

File Name       :   CSLAB_DECISION_TREE_V1
Purpose 	:   A Program for Classification using Decision Tree Classifier in R
Author		:   Durga Prasad
Reviewer 	:   Jothi Periasamy
Date and Time	:   15/01/2019 10:53 hrs
Version		:   1.0	
Change History 	: 

____________________________________________________________________________________________

	Who				   When 			  Why
____________________________________________________________________________________________


	DP				15/01/2019		  Initital Release 

____________________________________________________________________________________________


/*******************************************************************************************

## Program Description : A Program for Classification using Decision Tree Classifier in R

## R Development Environment & Runtime - R Studio, Anaconda, Jupyter Notebook 

install.packages("ISLR")

install.packages("tree")

library("ISLR")

data(package="ISLR")

vAR_CSLAB_carseats<-Carseats

require(tree)

names(carseats)

hist(carseats$Sales)

vAR_CSLAB_High = ifelse(carseats$Sales<=8, "No", "Yes")

vAR_CSLAB_carseats = data.frame(vAR_CSLAB_carseats, vAR_CSLAB_High)

vAR_CSLAB_tree.carseats = tree(vAR_CSLAB_High~.-Sales, data=vAR_CSLAB_carseats)

set.seed(101)

vAR_CSLAB_train=sample(1:nrow(vAR_CSLAB_carseats), 250)

vAR_CSLAB_tree.carseats = tree(vAR_CSLAB_High~.-Sales, vAR_CSLAB_carseats, subset=vAR_CSLAB_train)

plot(vAR_CSLAB_tree.carseats)

text(vAR_CSLAB_tree.carseats, pretty=0)

vAR_CSLAB_tree.pred = predict(vAR_CSLAB_tree.carseats, vAR_CSLAB_carseats[-train,], type="class")


/*******************************************************************************************
  
Disclaimer.

      We are providing this code block strictly for learning and researching, this is not a 
production ready code. We have no liability on this particular code under any circumstances; 
users should use this code on their own risk. All software, hardware and other products that 
are referenced in these materials belong to the respective vendor who developed or who owns 
this product.

/*******************************************************************************************

	