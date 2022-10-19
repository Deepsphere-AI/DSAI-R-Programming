
/*******************************************************************************************

File Name       :   CSLAB_SUBSETTING_LOGICAL_SUBSETTING_ROW_SELECTION_V1
Purpose 	:   A Program for Row Selection from Dataframes (Logical Subsetting) in R
Author		:   Durga Prasad
Reviewer 	:   Jothi Periasamy
Date and Time	:   17/01/2019 11:53 hrs
Version		:   1.0	
Change History 	: 

____________________________________________________________________________________________

	Who				   When 			  Why
____________________________________________________________________________________________


	DP				17/01/2019		  Initital Release 

____________________________________________________________________________________________


/*******************************************************************************************
 	
## Program Description : A Program for Row Selection from Dataframes (Logical Subsetting) in R

## R Development Environment & Runtime - R Studio, Anaconda, Jupyter

mtcars[mtcars$gear == 5, ]

mtcars[mtcars$gear == 5 & mtcars$cyl == 4, ]

subset(mtcars, gear == 5)

subset(mtcars, gear == 5 & cyl == 4)

/*******************************************************************************************
Disclaimer.

      We are providing this code block strictly for learning and researching, this is not a 
production ready code. We have no liability on this particular code under any circumstances; 
users should use this code on 	their own risk. All software, hardware and othr products that 
are referenced in these materials belong to the respective vendor who developed or who owns 
this product.

/*******************************************************************************************
