
/*******************************************************************************************

File Name       :   CSLAB_FUNCTIONALS_RECURSIVE_RELATIONSHIPS_V1
Purpose 	:   A Program for Recursive Relationships in R
Author		:   Durga Prasad
Reviewer 	:   Jothi Periasamy
Date and Time	:   17/01/2019 20:15 hrs
Version		:   1.0	
Change History 	: 

____________________________________________________________________________________________

	Who				   When 			  Why
____________________________________________________________________________________________


	DP				17/01/2019		  Initital Release 

____________________________________________________________________________________________


/*******************************************************************************************
 	
## Program Description : A Program for Recursive Relationships in R

## R Development Environment & Runtime - R Studio, Anaconda, Jupyter

vAR_CSLAB_exps <- function(x, alpha) {
  
    vAR_CSLAB_s <- numeric(length(x) + 1)
    
  for (i in seq_along(vAR_CSLAB_s)) {
    
      if (i == 1) {
      
          vAR_CSLAB_s[i] <- x[i]
    
      } else {
      
          vAR_CSLAB_s[i] <- alpha * x[i] + (1 - alpha) * vAR_CSLAB_s[i - 1]
    }
  
  }
  
    vAR_CSLAB_s
}

vAR_CSLAB_x <- runif(6)

vAR_CSLAB_exps(vAR_CSLAB_x, 0.5)

/*******************************************************************************************
Disclaimer.

      We are providing this code block strictly for learning and researching, this is not a 
production ready code. We have no liability on this particular code under any circumstances; 
users should use this code on 	their own risk. All software, hardware and othr products that 
are referenced in these materials belong to the respective vendor who developed or who owns 
this product.

/*******************************************************************************************
