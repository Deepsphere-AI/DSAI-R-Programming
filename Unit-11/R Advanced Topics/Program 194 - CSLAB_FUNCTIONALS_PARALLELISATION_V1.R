
/*******************************************************************************************

File Name       :   CSLAB_FUNCTIONALS_PARALLELISATION_V1
Purpose 	:   A Program for Parallelisation in R
Author		:   Durga Prasad
Reviewer 	:   Jothi Periasamy
Date and Time	:   17/01/2019 19:29 hrs
Version		:   1.0	
Change History 	: 

____________________________________________________________________________________________

	Who				   When 			  Why
____________________________________________________________________________________________


	DP				17/01/2019		  Initital Release 

____________________________________________________________________________________________


/*******************************************************************************************
 	
## Program Description : A Program for Parallelisation in R

## R Development Environment & Runtime - R Studio, Anaconda, Jupyter

vAR_CSLAB_lapply3 <- function(x, f, ...) {
  
    vAR_CSLAB_out <- vector("list", length(x))
  
    for (i in sample(seq_along(x))) {
    
        vAR_CSLAB_out[[i]] <- f(x[[i]], ...)
  }
  
    vAR_CSLAB_out
}

unlist(lapply(1:10, sqrt))

unlist(lapply3(1:10, sqrt))

/*******************************************************************************************
Disclaimer.

      We are providing this code block strictly for learning and researching, this is not a 
production ready code. We have no liability on this particular code under any circumstances; 
users should use this code on 	their own risk. All software, hardware and othr products that 
are referenced in these materials belong to the respective vendor who developed or who owns 
this product.

/*******************************************************************************************
