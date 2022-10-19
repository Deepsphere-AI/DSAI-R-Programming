
/*******************************************************************************************

File Name       :   CSLAB_TENSORFLOW_SPARSE_TENSORS_V1
Purpose 	:   A Program for Sparse Tensors in R
Author		:   Durga Prasad
Reviewer 	:   Jothi Periasamy
Date and Time	:   17/01/2019 22:04 hrs
Version		:   1.0	
Change History 	: 

____________________________________________________________________________________________

	Who				   When 			  Why
____________________________________________________________________________________________


	DP				17/01/2019		  Initital Release 

____________________________________________________________________________________________


/*******************************************************************************************
 	
## Program Description : A Program for Sparse Tensors in R

## R Development Environment & Runtime - R Studio, Anaconda, Jupyter

install.packages("tensorr")

library(tensorr)

vAR_CSLAB_subs <- list(c(1,1,1), c(1,1,2))

vAR_CSLAB_vals <- c(10, 20)

vAR_CSLAB_dims <- c(2,2,2)

vAR_CSLAB_x <- sptensor(vAR_CSLAB_subs, vAR_CSLAB_vals, vAR_CSLAB_dims)

vAR_CSLAB_x

/*******************************************************************************************
Disclaimer.

      We are providing this code block strictly for learning and researching, this is not a 
production ready code. We have no liability on this particular code under any circumstances; 
users should use this code on 	their own risk. All software, hardware and othr products that 
are referenced in these materials belong to the respective vendor who developed or who owns 
this product.

/*******************************************************************************************
