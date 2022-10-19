
/*******************************************************************************************

File Name       :   CSLAB_EXCEPTION_HANDLING_RETURN_WITH_DEBUG_V1
Purpose 	:   A Program for Exception Handling using Return With Debug in R
Author		:   Durga Prasad
Reviewer 	:   Jothi Periasamy
Date and Time	:   17/01/2019 15:44 hrs
Version		:   1.0	
Change History 	: 

____________________________________________________________________________________________

	Who				   When 			  Why
____________________________________________________________________________________________


	DP				17/01/2019		  Initital Release 

____________________________________________________________________________________________


/*******************************************************************************************
 	
## Program Description : A Program for Exception Handling using Return With Debug in R

## R Development Environment & Runtime - R Studio, Anaconda, Jupyter

vAR_CSLAB_browseOnce <- function() 
{
  vAR_CSLAB_old <- getOption("error")
  
    function() {
    options(error = old)
    browser()
  }
}
options(error = browseOnce())

vAR_CSLAB_f <- function() stop("!")
# Enters browser
vAR_CSLAB_f()
# Runs normally
vAR_CSLAB_f()

# Note: Expected Output is an Error Message 

/*******************************************************************************************
Disclaimer.

      We are providing this code block strictly for learning and researching, this is not a 
production ready code. We have no liability on this particular code under any circumstances; 
users should use this code on 	their own risk. All software, hardware and othr products that 
are referenced in these materials belong to the respective vendor who developed or who owns 
this product.

/*******************************************************************************************
