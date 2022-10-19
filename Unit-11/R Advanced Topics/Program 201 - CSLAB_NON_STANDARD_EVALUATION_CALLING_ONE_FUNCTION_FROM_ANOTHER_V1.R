
/*******************************************************************************************

File Name       :   CSLAB_NON_STANDARD_EVALUATION_CALLING_ONE_FUNCTION_FROM_ANOTHER_V1
Purpose 	:   A Program for Calling one function from Another in R
Author		:   Durga Prasad
Reviewer 	:   Jothi Periasamy
Date and Time	:   17/01/2019 21:17 hrs
Version		:   1.0	
Change History 	: 

____________________________________________________________________________________________

	Who				   When 			  Why
____________________________________________________________________________________________


	DP				17/01/2019		  Initital Release 

____________________________________________________________________________________________


/*******************************************************************************************
 	
## Program Description : A Program for Calling one function from Another in Subset in R

## R Development Environment & Runtime - R Studio, Anaconda, Jupyter

vAR_CSLAB_a <- 4

subscramble(sample_df, a == 4)

vAR_CSLAB_a <- c(1, 1, 4, 4, 4, 4)

subscramble(sample_df, vAR_CSLAB_a >= 4)

vAR_CSLAB_subset2_q <- function(x, condition) {
  r <- eval(condition, x, parent.frame())
  x[r, ]
}

vAR_CSLAB_subset2 <- function(x, condition) {
  vAR_CSLAB_subset2_q(x, substitute(condition))
}

vAR_CSLAB_subscramble <- function(x, condition) {
  condition <- substitute(condition)
  scramble(vAR_CSLAB_subset2_q(x, condition))
}

subscramble(sample_df, vAR_CSLAB_a >= 3)

/*******************************************************************************************
Disclaimer.

      We are providing this code block strictly for learning and researching, this is not a 
production ready code. We have no liability on this particular code under any circumstances; 
users should use this code on 	their own risk. All software, hardware and othr products that 
are referenced in these materials belong to the respective vendor who developed or who owns 
this product.

/*******************************************************************************************
