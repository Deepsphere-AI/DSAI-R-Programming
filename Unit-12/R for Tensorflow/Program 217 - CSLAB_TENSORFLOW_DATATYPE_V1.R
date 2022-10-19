
/*******************************************************************************************

File Name       :   CSLAB_TENSORFLOW_DATATYPE_V1
Purpose 	:   A Program for Tensorflow Datatype in R
Author		:   Durga Prasad
Reviewer 	:   Jothi Periasamy
Date and Time	:   18/01/2019 9:28 hrs
Version		:   1.0	
Change History 	: 

____________________________________________________________________________________________

	Who				   When 			  Why
____________________________________________________________________________________________


	DP				18/01/2019		  Initital Release 

____________________________________________________________________________________________


/*******************************************************************************************
 	
## Program Description : A Program for Tensorflow Datatype in R

## R Development Environment & Runtime - R Studio, Anaconda, Jupyter

vAR_CSLAB_a <- tf$constant(3, dtype = tf$float32, name = "a")

vAR_CSLAB_b <- tf$constant(5, dtype = tf$float32, name = "b")

vAR_CSLAB_c <- list(vAR_CSLAB_a, vAR_CSLAB_b)

vAR_CSLAB_sess = tf$Session()

print(vAR_CSLAB_sess$run(c))

/*******************************************************************************************
Disclaimer.

      We are providing this code block strictly for learning and researching, this is not a 
production ready code. We have no liability on this particular code under any circumstances; 
users should use this code on 	their own risk. All software, hardware and othr products that 
are referenced in these materials belong to the respective vendor who developed or who owns 
this product.

/*******************************************************************************************
