
/*******************************************************************************************

File Name       :   CSLAB_SUBSETTING_INTEGER_ORDERING_V1
Purpose 	:   A Program for Ordering (Integer Subsetting) in R
Author		:   Durga Prasad
Reviewer 	:   Jothi Periasamy
Date and Time	:   17/01/2019 10:55 hrs
Version		:   1.0	
Change History 	: 

____________________________________________________________________________________________

	Who				   When 			  Why
____________________________________________________________________________________________


	DP				17/01/2019		  Initital Release 

____________________________________________________________________________________________


/*******************************************************************************************
 	
## Program Description : A Program for Ordering (Integer Subsetting) in R

## R Development Environment & Runtime - R Studio, Anaconda, Jupyter

vAR_CSLAB_x <- c("b", "c", "a")

order(vAR_CSLAB_x)

vAR_CSLAB_df2 <- vAR_CSLAB_df[sample(nrow(vAR_CSLAB_df)), 3:1]

vAR_CSLAB_df2

vAR_CSLAB_df2[, order(names(vAR_CSLAB_df2))]

/*******************************************************************************************
Disclaimer.

      We are providing this code block strictly for learning and researching, this is not a 
production ready code. We have no liability on this particular code under any circumstances; 
users should use this code on 	their own risk. All software, hardware and othr products that 
are referenced in these materials belong to the respective vendor who developed or who owns 
this product.

/*******************************************************************************************
