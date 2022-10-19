
/*******************************************************************************************

File Name       :   CSLAB_TENSORFLOW_ARRAY_OPERATION_SPLIT_A_TENSOR_V1
Purpose 	:   A Program for Array Operations Split a Tensor in R
Author		:   Durga Prasad
Reviewer 	:   Jothi Periasamy
Date and Time	:   18/01/2019 11:28 hrs
Version		:   1.0	
Change History 	: 

____________________________________________________________________________________________

	Who				   When 			  Why
____________________________________________________________________________________________


	DP				18/01/2019		  Initital Release 

____________________________________________________________________________________________


/*******************************************************************************************
 	
## Program Description : A Program for Array Operations Split a Tensor in R

## R Development Environment & Runtime - R Studio, Anaconda, Jupyter

library(tensorflow)

vAR_CSLAB_a <- tf$constant(1:20, shape = c(4L, 5L), name = "a")

vAR_CSLAB_l <- tf$split(vAR_CSLAB_a, c(1L, 2L, 2L), axis = 1L)

vAR_CSLAB_sess = tf$Session()

vAR_CSLAB_sess$run(vAR_CSLAB_l)

/*******************************************************************************************
Disclaimer.

      We are providing this code block strictly for learning and researching, this is not a 
production ready code. We have no liability on this particular code under any circumstances; 
users should use this code on 	their own risk. All software, hardware and othr products that 
are referenced in these materials belong to the respective vendor who developed or who owns 
this product.

/*******************************************************************************************
