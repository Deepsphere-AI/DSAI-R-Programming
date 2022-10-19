
/*******************************************************************************************

File Name       :   CSLAB_FUNCTION_RETURN_VALUES_ON_EXIT_V1
Purpose 	:   A Program for Return Values on Exit in R
Author		:   Durga Prasad
Reviewer 	:   Jothi Periasamy
Date and Time	:   17/01/2019 14:54 hrs
Version		:   1.0	
Change History 	: 

____________________________________________________________________________________________

	Who				   When 			  Why
____________________________________________________________________________________________


	DP				17/01/2019		  Initital Release 

____________________________________________________________________________________________


/*******************************************************************************************
 	
## Program Description : A Program for Return Values on Exit in R

## R Development Environment & Runtime - R Studio, Anaconda, Jupyter

vAR_CSLAB_in_dir <- function(dir, code) {
  
    vAR_CSLAB_old <- setwd(dir)
  
    on.exit(setwd(vAR_CSLAB_old))

  force(code)

}

getwd()

/*******************************************************************************************
Disclaimer.

      We are providing this code block strictly for learning and researching, this is not a 
production ready code. We have no liability on this particular code under any circumstances; 
users should use this code on 	their own risk. All software, hardware and othr products that 
are referenced in these materials belong to the respective vendor who developed or who owns 
this product.

/*******************************************************************************************
