
/*******************************************************************************************

File Name       :   CSLAB_FUNCTION_LEXICAL_SCOPING_V1
Purpose 	:   A Program for Lexical Scoping in R
Author		:   Durga Prasad
Reviewer 	:   Jothi Periasamy
Date and Time	:   17/01/2019 12:28 hrs
Version		:   1.0	
Change History 	: 

____________________________________________________________________________________________

	Who				   When 			  Why
____________________________________________________________________________________________


	DP				17/01/2019		  Initital Release 

____________________________________________________________________________________________


/*******************************************************************************************
 	
## Program Description : A Program for Lexical Scoping in R

## R Development Environment & Runtime - R Studio, Anaconda, Jupyter

vAR_CSLAB_f <- function() {
  
    vAR_CSLAB_x <- 1
  
    vAR_CSLAB_y <- 2
  
    c(vAR_CSLAB_x, vAR_CSLAB_y)
}

vAR_CSLAB_f()

rm(vAR_CSLAB_f)

/*******************************************************************************************
Disclaimer.

      We are providing this code block strictly for learning and researching, this is not a 
production ready code. We have no liability on this particular code under any circumstances; 
users should use this code on 	their own risk. All software, hardware and othr products that 
are referenced in these materials belong to the respective vendor who developed or who owns 
this product.

/*******************************************************************************************
