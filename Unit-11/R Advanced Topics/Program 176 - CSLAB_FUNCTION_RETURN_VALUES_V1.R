
/*******************************************************************************************

File Name       :   CSLAB_FUNCTION_RETURN_VALUES_V1
Purpose 	:   A Program for Return Values in R
Author		:   Durga Prasad
Reviewer 	:   Jothi Periasamy
Date and Time	:   17/01/2019 14:43 hrs
Version		:   1.0	
Change History 	: 

____________________________________________________________________________________________

	Who				   When 			  Why
____________________________________________________________________________________________


	DP				17/01/2019		  Initital Release 

____________________________________________________________________________________________


/*******************************************************************************************
 	
## Program Description : A Program for Return Values in R

## R Development Environment & Runtime - R Studio, Anaconda, Jupyter

vAR_CSLAB_f <- function(vAR_CSLAB_x) 

{
    
  if (vAR_CSLAB_x < 10) 
  
  {
  
      0
  
  } else 
  
  {
    
      10
  }

}

vAR_CSLAB_f(5)

vAR_CSLAB_f <- function(vAR_CSLAB_x, vAR_CSLAB_y) 

{
  if (!vAR_CSLAB_x) return(vAR_CSLAB_y)

  # complicated processing here
}

/*******************************************************************************************
Disclaimer.

      We are providing this code block strictly for learning and researching, this is not a 
production ready code. We have no liability on this particular code under any circumstances; 
users should use this code on 	their own risk. All software, hardware and othr products that 
are referenced in these materials belong to the respective vendor who developed or who owns 
this product.

/*******************************************************************************************
