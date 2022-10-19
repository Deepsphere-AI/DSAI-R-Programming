
/*******************************************************************************************

File Name       :   CSLAB_SUBSETTING_INTEGER_ORDERING_EXPANDING_AGG_COUNTS_V1
Purpose 	:   A Program for Expanding Aggregated Counts (Integer Subsetting) in R
Author		:   Durga Prasad
Reviewer 	:   Jothi Periasamy
Date and Time	:   17/01/2019 11:14 hrs
Version		:   1.0	
Change History 	: 

____________________________________________________________________________________________

	Who				   When 			  Why
____________________________________________________________________________________________


	DP				17/01/2019		  Initital Release 

____________________________________________________________________________________________


/*******************************************************************************************
 	
## Program Description : A Program for Expanding Aggregated Counts (Integer Subsetting) in R

## R Development Environment & Runtime - R Studio, Anaconda, Jupyter

vAR_CSLAB_df <- data.frame(x = c(2, 4, 1), y = c(9, 11, 6), n = c(3, 5, 1))

rep(1:nrow(vAR_CSLAB_df), vAR_CSLAB_df$n)

vAR_CSLAB_df[rep(1:nrow(vAR_CSLAB_df), vAR_CSLAB_df$n), ]

/*******************************************************************************************
Disclaimer.

      We are providing this code block strictly for learning and researching, this is not a 
production ready code. We have no liability on this particular code under any circumstances; 
users should use this code on 	their own risk. All software, hardware and othr products that 
are referenced in these materials belong to the respective vendor who developed or who owns 
this product.

/*******************************************************************************************
