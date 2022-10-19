
/*******************************************************************************************

File Name       :   CSLAB_FUNCTIONAL_PROGRAMMING_REMOVE_DUPLICATES_V1
Purpose 	:   A Program for Removing Duplicates in R
Author		:   Durga Prasad
Reviewer 	:   Jothi Periasamy
Date and Time	:   17/01/2019 17:04 hrs
Version		:   1.0	
Change History 	: 

____________________________________________________________________________________________

	Who				   When 			  Why
____________________________________________________________________________________________


	DP				17/01/2019		  Initital Release 

____________________________________________________________________________________________


/*******************************************************************************************
 	
## Program Description : A Program for Removing Duplicates in R

## R Development Environment & Runtime - R Studio, Anaconda, Jupyter

vAR_CSLAB_fix_missing <- function(x, na.value) {
  
    vAR_CSLAB_x[vAR_CSLAB_x == na.value] <- NA
  
    vAR_CSLAB_x
}

vAR_CSLAB_summary <- function(vAR_CSLAB_x) {
 
    c(mean(vAR_CSLAB_x, na.rm = TRUE),
   
      median(vAR_CSLAB_x, na.rm = TRUE),
   
      sd(vAR_CSLAB_x, na.rm = TRUE),
   
      mad(vAR_CSLAB_x, na.rm = TRUE),
   
      IQR(vAR_CSLAB_x, na.rm = TRUE))
}

vAR_CSLAB_summary <- function(vAR_CSLAB_x) {
  
    vAR_CSLAB_funs <- c(mean, median, sd, mad, IQR)
  
    lapply(vAR_CSLAB_funs, function(f) f(vAR_CSLAB_x, na.rm = TRUE))
}
         
vAR_CSLAB_x

/*******************************************************************************************
Disclaimer.

      We are providing this code block strictly for learning and researching, this is not a 
production ready code. We have no liability on this particular code under any circumstances; 
users should use this code on 	their own risk. All software, hardware and othr products that 
are referenced in these materials belong to the respective vendor who developed or who owns 
this product.

/*******************************************************************************************
