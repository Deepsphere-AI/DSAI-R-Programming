
/*******************************************************************************************

File Name       :   CSLAB_ARGUMENT_MATCHING_V1
Purpose 	:   A Program for Argument Matching in R
Author		:   Durga Prasad
Reviewer 	:   Jothi Periasamy
Date and Time	:   14/01/2019 11:42 hrs
Version		:   1.0	
Change History 	: 

____________________________________________________________________________________________

Who				   When 			  Why
____________________________________________________________________________________________


DP				14/01/2019		  Initital Release 

____________________________________________________________________________________________


/*******************************************************************************************
  
## Program Description : A Program for Argument Matching in R

## R Development Environment & Runtime - R Studio, Anaconda, Jupyter Notebook

match.call(get, call("get", "abc", i = FALSE, p = 3))

#vAR_CSLAB_fun 

function(x, lower = 0, upper = 1) {
  
structure((x - lower) / (upper - lower), CALL = match.call())

}

/*******************************************************************************************
  Disclaimer.

      We are providing this code block strictly for learning and researching, this is not a 
production ready code. We have no liability on this particular code under any circumstances; 
users should use this code on their own risk. All software, hardware and othr products that 
are referenced in these materials belong to the respective vendor who developed or who owns 
this product.

/*******************************************************************************************


