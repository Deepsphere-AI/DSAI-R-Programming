
/*******************************************************************************************

File Name       :   CSLAB_TENSORFLOW_MATRIX_DETERMINANT_V1
Purpose 	:   A Program for Matrix Determinant in R
Author		:   Durga Prasad
Reviewer 	:   Jothi Periasamy
Date and Time	:   18/01/2019 10:50 hrs
Version		:   1.0	
Change History 	: 

____________________________________________________________________________________________

	Who				   When 			  Why
____________________________________________________________________________________________


	DP				18/01/2019		  Initital Release 

____________________________________________________________________________________________


/*******************************************************************************************
 	
## Program Description : A Program for Matrix Determinant in R

## R Development Environment & Runtime - R Studio, Anaconda, Jupyter

library(tensorflow)

vAR_CSLAB_a <- tf$constant(c(1, 2, 3, 4), shape = c(2L, 2L))

vAR_CSLAB_b <- tf$matrix_determinant(vAR_CSLAB_a, name = "determinant")

vAR_CSLAB_sess = tf$Session()

vAR_CSLAB_sess$run(vAR_CSLAB_b)

/*******************************************************************************************
Disclaimer.

      We are providing this code block strictly for learning and researching, this is not a 
production ready code. We have no liability on this particular code under any circumstances; 
users should use this code on 	their own risk. All software, hardware and othr products that 
are referenced in these materials belong to the respective vendor who developed or who owns 
this product.

/*******************************************************************************************
