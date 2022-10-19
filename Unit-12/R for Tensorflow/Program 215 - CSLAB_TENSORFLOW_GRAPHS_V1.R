
/*******************************************************************************************

File Name       :   CSLAB_TENSORFLOW_GRAPHS_V1
Purpose 	:   A Program for Tensorflow Graphs in R
Author		:   Durga Prasad
Reviewer 	:   Jothi Periasamy
Date and Time	:   18/01/2019 9:09 hrs
Version		:   1.0	
Change History 	: 

____________________________________________________________________________________________

	Who				   When 			  Why
____________________________________________________________________________________________


	DP				18/01/2019		  Initital Release 

____________________________________________________________________________________________


/*******************************************************************************************
 	
## Program Description : A Program for Tensorflow Graphs in R

## R Development Environment & Runtime - R Studio, Anaconda, Jupyter

library(tensorflow)

pi = tf$constant(3.14, name="pi")

r = tf$placeholder(tf$float32, name="r")
    
a = pi * r * r

sess = tf$Session()

sess$run(pi)

/*******************************************************************************************
Disclaimer.

      We are providing this code block strictly for learning and researching, this is not a 
production ready code. We have no liability on this particular code under any circumstances; 
users should use this code on 	their own risk. All software, hardware and othr products that 
are referenced in these materials belong to the respective vendor who developed or who owns 
this product.

/*******************************************************************************************
