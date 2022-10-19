
/*******************************************************************************************

File Name       :   CSLAB_FUNCTIONALS_PREDICATE_FUNCTIONALS_V1
Purpose 	:   A Program for Predicate Functionals in R
Author		:   Durga Prasad
Reviewer 	:   Jothi Periasamy
Date and Time	:   17/01/2019 19:41 hrs
Version		:   1.0	
Change History 	: 

____________________________________________________________________________________________

	Who				   When 			  Why
____________________________________________________________________________________________


	DP				17/01/2019		  Initital Release 

____________________________________________________________________________________________


/*******************************************************************************************
 	
## Program Description : A Program for Predicate Functionals in R

## R Development Environment & Runtime - R Studio, Anaconda, Jupyter

vAR_CSLAB_where <- function(f, x) {
  
    vapply(x, f, logical(1))

}

vAR_CSLAB_df <- data.frame(x = 1:3, y = c("a", "b", "c"))

vAR_CSLAB_where(is.factor, vAR_CSLAB_df)

str(Filter(is.factor, vAR_CSLAB_df))

str(Find(is.factor, vAR_CSLAB_df))

/*******************************************************************************************
Disclaimer.

      We are providing this code block strictly for learning and researching, this is not a 
production ready code. We have no liability on this particular code under any circumstances; 
users should use this code on 	their own risk. All software, hardware and othr products that 
are referenced in these materials belong to the respective vendor who developed or who owns 
this product.

/*******************************************************************************************
