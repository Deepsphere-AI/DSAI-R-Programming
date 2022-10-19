
/*******************************************************************************************

File Name       :   CSLAB_FUNCTIONALS_LOOPING_PATTERNS_V1
Purpose 	:   A Program for Looping Patterns in R
Author		:   Durga Prasad
Reviewer 	:   Jothi Periasamy
Date and Time	:   17/01/2019 18:59 hrs
Version		:   1.0	
Change History 	: 

____________________________________________________________________________________________

	Who				   When 			  Why
____________________________________________________________________________________________


	DP				17/01/2019		  Initital Release 

____________________________________________________________________________________________


/*******************************************************************************************
 	
## Program Description : A Program for Looping Patterns in R

## R Development Environment & Runtime - R Studio, Anaconda, Jupyter

vAR_CSLAB_xs <- runif(1e3)

vAR_CSLAB_res <- c()

for (x in vAR_CSLAB_xs) {
  # This is slow!
  
    vAR_CSLAB_res <- c(vAR_CSLAB_res, sqrt(vAR_CSLAB_x))
}

vAR_CSLAB_res <- numeric(length(vAR_CSLAB_xs))

for (i in seq_along(vAR_CSLAB_xs)) {
    
  vAR_CSLAB_res[i] <- sqrt(vAR_CSLAB_xs[i])
}

vAR_CSLAB_res

/*******************************************************************************************
Disclaimer.

      We are providing this code block strictly for learning and researching, this is not a 
production ready code. We have no liability on this particular code under any circumstances; 
users should use this code on 	their own risk. All software, hardware and othr products that 
are referenced in these materials belong to the respective vendor who developed or who owns 
this product.

/*******************************************************************************************
