
/*******************************************************************************************

File Name       :   CSLAB_FUNCTION_DEFAULT_ARGIMENTS_V1
Purpose 	:   A Program for Default Arguments in R
Author		:   Durga Prasad
Reviewer 	:   Jothi Periasamy
Date and Time	:   17/01/2019 13:08 hrs
Version		:   1.0	
Change History 	: 

____________________________________________________________________________________________

	Who				   When 			  Why
____________________________________________________________________________________________


	DP				17/01/2019		  Initital Release 

____________________________________________________________________________________________


/*******************************************************************************************
 	
## Program Description : A Program for Default Arguments in R

## R Development Environment & Runtime - R Studio, Anaconda, Jupyter

vAR_CSLAB_f <- function(vAR_CSLAB_a = 1, vAR_CSLAB_b = 2) 

{

    c(vAR_CSLAB_a, vAR_CSLAB_b)

}
vAR_CSLAB_f()

vAR_CSLAB_g <- function(vAR_CSLAB_a = 1, vAR_CSLAB_b = vAR_CSLAB_a * 2) 

{
    
  c(vAR_CSLAB_a, vAR_CSLAB_b)

}

vAR_CSLAB_g()

/*******************************************************************************************
Disclaimer.

      We are providing this code block strictly for learning and researching, this is not a 
production ready code. We have no liability on this particular code under any circumstances; 
users should use this code on 	their own risk. All software, hardware and othr products that 
are referenced in these materials belong to the respective vendor who developed or who owns 
this product.

/*******************************************************************************************
