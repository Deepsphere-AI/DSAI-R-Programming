
/*******************************************************************************************

File Name       :   CSLAB_DATA_EXPLORATION_MULTIPLE_VARIABLES_V1
Purpose 	:   A Program for Data Exploration of Multiple Variables in R
Author		:   Durga Prasad
Reviewer 	:   Jothi Periasamy
Date and Time	:   15/01/2015 10:34 hrs
Version		:   1.0	
Change History 	: 

____________________________________________________________________________________________

	Who				   When 			  Why
____________________________________________________________________________________________


	DP				15/01/2015		  Initital Release 

____________________________________________________________________________________________


/*******************************************************************************************

## Program Description : A Program for Data Exploration of Multiple Variables in R

## R Development Environment & Runtime - R Studio, Anaconda, Jupyter Notebook 

cov(iris$Sepal.Length, iris$Petal.Length)

cov(iris[,1:4])

aggregate(Sepal.Length ~ Species, summary, data=iris)

boxplot(Sepal.Length~Species, data=iris)

boxplot(Sepal.Length~Species, data=iris)

with(iris, plot(Sepal.Length, Sepal.Width, col=Species, pch=as.numeric(Species)))

plot(jitter(iris$Sepal.Length), jitter(iris$Sepal.Width))  

/*******************************************************************************************
  
Disclaimer.

      We are providing this code block strictly for learning and researching, this is not a 
production ready code. We have no liability on this particular code under any circumstances; 
users should use this code on their own risk. All software, hardware and other products that 
are referenced in these materials belong to the respective vendor who developed or who owns 
this product.

/*******************************************************************************************

	