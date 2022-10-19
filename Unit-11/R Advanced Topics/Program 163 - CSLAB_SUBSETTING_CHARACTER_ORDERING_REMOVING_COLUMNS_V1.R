
/*******************************************************************************************

File Name       :   CSLAB_SUBSETTING_CHARACTER_ORDERING_REMOVING_COLUMNS_V1
Purpose 	:   A Program for Removing Columns from Dataframes (Character Subsetting) in R
Author		:   Durga Prasad
Reviewer 	:   Jothi Periasamy
Date and Time	:   17/01/2019 11:31 hrs
Version		:   1.0	
Change History 	: 

____________________________________________________________________________________________

	Who				   When 			  Why
____________________________________________________________________________________________


	DP				17/01/2019		  Initital Release 

____________________________________________________________________________________________


/*******************************************************************************************
 	
## Program Description : A Program for Removing Columns from Dataframes (Character Subsetting) in R

## R Development Environment & Runtime - R Studio, Anaconda, Jupyter

vAR_CSLAB_df <- data.frame(x = 1:3, y = 3:1, z = letters[1:3])

vAR_CSLAB_df$z <- NULL

vAR_CSLAB_df <- data.frame(x = 1:3, y = 3:1, z = letters[1:3])

vAR_CSLAB_df[c("x", "y")]

/*******************************************************************************************
Disclaimer.

      We are providing this code block strictly for learning and researching, this is not a 
production ready code. We have no liability on this particular code under any circumstances; 
users should use this code on 	their own risk. All software, hardware and othr products that 
are referenced in these materials belong to the respective vendor who developed or who owns 
this product.

/*******************************************************************************************
