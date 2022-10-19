
/*******************************************************************************************

File Name       :   CSLAB_NON_STANDARD_EVALUATION_IN_SUBSET_V1
Purpose 	:   A Program for Non Standard Evaluation in Subset in R
Author		:   Durga Prasad
Reviewer 	:   Jothi Periasamy
Date and Time	:   17/01/2019 21:01 hrs
Version		:   1.0	
Change History 	: 

____________________________________________________________________________________________

	Who				   When 			  Why
____________________________________________________________________________________________


	DP				17/01/2019		  Initital Release 

____________________________________________________________________________________________


/*******************************************************************************************
 	
## Program Description : A Program for Non Standard Evaluation in Subset in R

## R Development Environment & Runtime - R Studio, Anaconda, Jupyter

vAR_CSLAB_sample_df <- data.frame(a = 1:5, b = 5:1, c = c(5, 3, 1, 4, 1))

subset(vAR_CSLAB_sample_df, a >= 4)

subset(vAR_CSLAB_sample_df, b == c)

quote(1:10)

quote(x)

quote(x + y^2)

eval(quote(x <- 1))

eval(quote(x))

/*******************************************************************************************
Disclaimer.

      We are providing this code block strictly for learning and researching, this is not a 
production ready code. We have no liability on this particular code under any circumstances; 
users should use this code on 	their own risk. All software, hardware and othr products that 
are referenced in these materials belong to the respective vendor who developed or who owns 
this product.

/*******************************************************************************************
