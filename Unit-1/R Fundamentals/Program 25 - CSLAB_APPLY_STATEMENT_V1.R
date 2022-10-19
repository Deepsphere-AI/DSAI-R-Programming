
/*******************************************************************************************

File Name       :   CSLAB_APPLY_STATEMENT_V1
Purpose 	:   A Program for Concepts of Apply Statements in R
Author		:   Durga Prasad
Reviewer 	:   Jothi Periasamy
Date and Time	:   14/01/2019 15:08 hrs
Version		:   1.0	
Change History 	: 

____________________________________________________________________________________________

	Who				   When 			  Why
____________________________________________________________________________________________


	DP				03/12/2015		  Initital Release 

____________________________________________________________________________________________


/*******************************************************************************************
 
## Program Description : A Program for Concepts of Apply Statements in R

## R Development Environment & Runtime - R Studio, Anaconda, Jupyter Notebook
 
vAR_CSLAB_X <- 1:10

vAR_CSLAB_test <- function(vAR_CSLAB_X)
 
{ 
  
if(vAR_CSLAB_X < 5) 
  
{ 
    
vAR_CSLAB_X-1 
  
} 
  
else 

{ 
    
vAR_CSLAB_X / vAR_CSLAB_X 
  
} 

} 

apply(as.matrix(vAR_CSLAB_X), 1, vAR_CSLAB_test)

/*******************************************************************************************
Disclaimer.

      We are providing this code block strictly for learning and researching, this is not a 
production ready code. We have no liability on this particular code under any circumstances; 
users should use this code on their own risk. All software, hardware and othr products that 
are referenced in these materials belong to the respective vendor who developed or who owns 
this product.

/*******************************************************************************************

