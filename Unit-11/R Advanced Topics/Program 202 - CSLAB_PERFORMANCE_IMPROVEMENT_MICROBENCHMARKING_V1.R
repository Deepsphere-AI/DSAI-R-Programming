
/*******************************************************************************************

File Name       :   CSLAB_PERFORMANCE_IMPROVEMENT_MICROBENCHMARKING_V1
Purpose 	:   A Program for Performance Improvement using Microbenchmarking in R
Author		:   Durga Prasad
Reviewer 	:   Jothi Periasamy
Date and Time	:   17/01/2019 21:33 hrs
Version		:   1.0	
Change History 	: 

____________________________________________________________________________________________

	Who				   When 			  Why
____________________________________________________________________________________________


	DP				17/01/2019		  Initital Release 

____________________________________________________________________________________________


/*******************************************************************************************
 	
## Program Description : A Program for Performance Improvement using Microbenchmarking in R

## R Development Environment & Runtime - R Studio, Anaconda, Jupyter

install.packages("microbenchmark")

library(microbenchmark)

vAR_CSLAB_x <- runif(100)

microbenchmark(
  
    sqrt(vAR_CSLAB_x),
    
  vAR_CSLAB_x ^ 0.5
)
/*******************************************************************************************
Disclaimer.

      We are providing this code block strictly for learning and researching, this is not a 
production ready code. We have no liability on this particular code under any circumstances; 
users should use this code on 	their own risk. All software, hardware and othr products that 
are referenced in these materials belong to the respective vendor who developed or who owns 
this product.

/*******************************************************************************************
