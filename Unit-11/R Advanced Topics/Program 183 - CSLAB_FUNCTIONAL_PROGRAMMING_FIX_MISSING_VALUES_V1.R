
/*******************************************************************************************

File Name       :   CSLAB_FUNCTIONAL_PROGRAMMING_FIX_MISSING_VALUES_V1
Purpose 	:   A Program for Fixing Missing Values in R
Author		:   Durga Prasad
Reviewer 	:   Jothi Periasamy
Date and Time	:   17/01/2019 16:43 hrs
Version		:   1.0	
Change History 	: 

____________________________________________________________________________________________

	Who				   When 			  Why
____________________________________________________________________________________________


	DP				17/01/2019		  Initital Release 

____________________________________________________________________________________________


/*******************************************************************************************
 	
## Program Description : A Program for Fixing Missing Values in R

## R Development Environment & Runtime - R Studio, Anaconda, Jupyter

set.seed(1014)

vAR_CSLAB_df <- data.frame(replicate(6, sample(c(1:10, -99), 6, rep = TRUE)))

names(vAR_CSLAB_df) <- letters[1:6]

vAR_CSLAB_df

fix_missing <- function(vAR_CSLAB_x) {
  
    vAR_CSLAB_x[vAR_CSLAB_x == -99] <- NA
  
    vAR_CSLAB_x
}

vAR_CSLAB_df$a <- fix_missing(vAR_CSLAB_df$a)

vAR_CSLAB_df$b <- fix_missing(vAR_CSLAB_df$b)

vAR_CSLAB_df$c <- fix_missing(vAR_CSLAB_df$c)

vAR_CSLAB_df$d <- fix_missing(vAR_CSLAB_df$d)

vAR_CSLAB_df$e <- fix_missing(vAR_CSLAB_df$e)

vAR_CSLAB_df$f <- fix_missing(vAR_CSLAB_df$e)

/*******************************************************************************************
Disclaimer.

      We are providing this code block strictly for learning and researching, this is not a 
production ready code. We have no liability on this particular code under any circumstances; 
users should use this code on 	their own risk. All software, hardware and othr products that 
are referenced in these materials belong to the respective vendor who developed or who owns 
this product.

/*******************************************************************************************
