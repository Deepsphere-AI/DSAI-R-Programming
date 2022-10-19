
/*******************************************************************************************

File Name       :   CSLAB_FUNCTIONALS_LAPPLY_V1
Purpose 	:   A Program for Functionals - lapply in R
Author		:   Durga Prasad
Reviewer 	:   Jothi Periasamy
Date and Time	:   17/01/2019 18:41 hrs
Version		:   1.0	
Change History 	: 

____________________________________________________________________________________________

	Who				   When 			  Why
____________________________________________________________________________________________


	DP				17/01/2019		  Initital Release 

____________________________________________________________________________________________


/*******************************************************************************************
 	
## Program Description : A Program for Functionals - lapply in R

## R Development Environment & Runtime - R Studio, Anaconda, Jupyter

vAR_CSLAB_l <- replicate(20, runif(sample(1:10, 1)), simplify = FALSE)

# With a for loop
vAR_CSLAB_out <- vector("list", length(vAR_CSLAB_l))

for (i in seq_along(vAR_CSLAB_l)) {

    vAR_CSLAB_out[[i]] <- length(vAR_CSLAB_l[[i]])

}

unlist(vAR_CSLAB_out)

unlist(lapply(vAR_CSLAB_l, length))

/*******************************************************************************************
Disclaimer.

      We are providing this code block strictly for learning and researching, this is not a 
production ready code. We have no liability on this particular code under any circumstances; 
users should use this code on 	their own risk. All software, hardware and othr products that 
are referenced in these materials belong to the respective vendor who developed or who owns 
this product.

/*******************************************************************************************
