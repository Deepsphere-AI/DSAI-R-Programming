
/*******************************************************************************************

File Name       :   CSLAB_COLOUR_SCHEMES_IN_R_V1
Purpose 	:   A Program for Color Schemes in R
Author		:   Durga Prasad
Reviewer 	:   Jothi Periasamy
Date and Time	:   15/01/2019 21:59 hrs
Version		:   1.0	
Change History 	: 

____________________________________________________________________________________________

	Who				   When 			  Why
____________________________________________________________________________________________


	DP				15/01/2019		  Initital Release 

____________________________________________________________________________________________


/*******************************************************************************************

## Program Description : A Program for Color Schemes in R  

## R Development Environment & Runtime - R Studio, Anaconda, Jupyter Notebook 

# Convert dose and cyl columns from numeric to factor variables

ToothGrowth$dose <- as.factor(ToothGrowth$dose)

mtcars$cyl <- as.factor(mtcars$cyl)

#head(ToothGrowth)

#head(mtcars)

library(ggplot2)

# Box plot
ggplot(ToothGrowth, aes(x=dose, y=len)) + geom_boxplot()

# scatter plot
ggplot(mtcars, aes(x=wt, y=mpg)) + geom_point()

# box plot
ggplot(ToothGrowth, aes(x=dose, y=len)) + geom_boxplot(fill='#A4A4A4', color="darkred")

# scatter plot
ggplot(mtcars, aes(x=wt, y=mpg)) + geom_point(color='darkblue')


/*******************************************************************************************
Disclaimer.

      We are providing this code block strictly for learning and researching, this is not a 
production ready code. We have no liability on this particular code under any circumstances; 
users should use this code on their own risk. All software, hardware and othr products that 
are referenced in these materials belong to the respective vendor who developed or who owns 
this product.

/*******************************************************************************************
