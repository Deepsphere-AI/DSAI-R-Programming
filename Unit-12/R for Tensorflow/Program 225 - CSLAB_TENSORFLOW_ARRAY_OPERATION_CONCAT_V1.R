
/*******************************************************************************************

File Name       :   CSLAB_TENSORFLOW_ARRAY_OPERATION_CONCAT_V1
Purpose 	:   A Program for Array Operations Concat in R
Author		:   Durga Prasad
Reviewer 	:   Jothi Periasamy
Date and Time	:   18/01/2019 11:03 hrs
Version		:   1.0	
Change History 	: 

____________________________________________________________________________________________

	Who				   When 			  Why
____________________________________________________________________________________________


	DP				18/01/2019		  Initital Release 

____________________________________________________________________________________________


/*******************************************************************************************
 	
## Program Description : A Program for Array Operations Concat in R

## R Development Environment & Runtime - R Studio, Anaconda, Jupyter

library(tensorflow)

vAR_CSLAB_a <- tf$constant(c(1, 2), shape = c(1L, 2L), name = "a")

vAR_CSLAB_b <- tf$constant(c(3, 4), shape = c(1L, 2L), name = "b")

vAR_CSLAB_c <- tf$concat(list(vAR_CSLAB_a,vAR_CSLAB_b), axis = 0L,   name = "concat")

vAR_CSLAB_sess = tf$Session()

vAR_CSLAB_sess$run(vAR_CSLAB_c)

/*******************************************************************************************
Disclaimer.

      We are providing this code block strictly for learning and researching, this is not a 
production ready code. We have no liability on this particular code under any circumstances; 
users should use this code on 	their own risk. All software, hardware and othr products that 
are referenced in these materials belong to the respective vendor who developed or who owns 
this product.

/*******************************************************************************************
