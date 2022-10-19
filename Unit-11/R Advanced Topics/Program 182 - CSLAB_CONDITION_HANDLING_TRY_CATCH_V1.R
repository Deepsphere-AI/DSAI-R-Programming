
/*******************************************************************************************

File Name       :   CSLAB_CONDITION_HANDLING_TRY_CATCH_V1
Purpose 	:   A Program for Condition Handling With Try Catch Method in R
Author		:   Durga Prasad
Reviewer 	:   Jothi Periasamy
Date and Time	:   17/01/2019 16:21 hrs
Version		:   1.0	
Change History 	: 

____________________________________________________________________________________________

	Who				   When 			  Why
____________________________________________________________________________________________


	DP				17/01/2019		  Initital Release 

____________________________________________________________________________________________


/*******************************************************************************************
 	
## Program Description : A Program for Condition Handling With Try Catch Method in R

## R Development Environment & Runtime - R Studio, Anaconda, Jupyter

vAR_CSLAB_show_condition <- function(code) {
  
    tryCatch(code,
    
             vAR_CSLAB_error = function(c) "error",
    
             vAR_CSLAB_warning = function(c) "warning",
    
             vAR_CSLAB_message = function(c) "message"
  )
}
show_condition(stop("!"))

# Note: Expected Output is an Error Message 

/*******************************************************************************************
Disclaimer.

      We are providing this code block strictly for learning and researching, this is not a 
production ready code. We have no liability on this particular code under any circumstances; 
users should use this code on 	their own risk. All software, hardware and othr products that 
are referenced in these materials belong to the respective vendor who developed or who owns 
this product.

/*******************************************************************************************
