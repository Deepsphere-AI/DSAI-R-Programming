
/*******************************************************************************************

File Name       :   CSLAB_SCATTER_PLOT_V1
Purpose 	:   A Program for Scatter Plot in R 
Author		:   Durga Prasad
Reviewer 	:   Jothi Periasamy
Date and Time	:   16/01/2019 00:21 hrs
Version		:   1.0	
Change History 	: 

____________________________________________________________________________________________

	Who				   When 			  Why
____________________________________________________________________________________________


	DP				16/01/2019		    Initital Release 

____________________________________________________________________________________________


/*******************************************************************************************
  
## Program Description : A Program for Scatter Plot in R  

## R Development Environment & Runtime - R Studio, Anaconda, Jupyter

set.seed(1410)

CSLAB_VAR_Y <- matrix(runif(30), ncol=3, dimnames=list(letters[1:10], LETTERS[1:3]))

plot(CSLAB_VAR_Y)

/*******************************************************************************************
  Disclaimer.

      We are providing this code block strictly for learning and researching, this is not a 
production ready code. We have no liability on this particular code under any circumstances; 
users should use this code on their own risk. All software, hardware and othr products that 
are referenced in these materials belong to the respective vendor who developed or who owns 
this product.

/*******************************************************************************************