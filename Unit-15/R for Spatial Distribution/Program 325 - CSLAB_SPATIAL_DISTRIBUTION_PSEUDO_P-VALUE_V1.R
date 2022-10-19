
/*******************************************************************************************

File Name       :   CSLAB_SPATIAL_DISTRIBUTION_PSEUDO_P-VALUE_V1
Purpose 	:   A Program for Pseudo P-Value in Spatial Distribution to in R
Author		:   Durga Prasad
Reviewer 	:   Jothi Periasamy
Date and Time	:   24/01/2019 13:33 hrs
Version		:   1.0	
Change History 	: 

____________________________________________________________________________________________

	Who				   When 			  Why
____________________________________________________________________________________________


	DP				24/01/2019		  Initital Release 

____________________________________________________________________________________________


/*******************************************************************************************
 	
## Program Description : A Program for Pseudo P-Value in Spatial Distribution to in R

## R Development Environment & Runtime - R Studio, Anaconda, Jupyter

vAR_CSLAB_N.greater <- sum(vAR_CSLAB_ann.r > vAR_CSLAB_ann.p)

vAR_CSLAB_N.greater

vAR_CSLAB_n  <- 599L

vAR_CSLAB_p <- min(vAR_CSLAB_N.greater + 1, vAR_CSLAB_n + 1 - vAR_CSLAB_N.greater) / (vAR_CSLAB_n +1)

vAR_CSLAB_p

/*******************************************************************************************
Disclaimer.

      We are providing this code block strictly for learning and researching, this is not a 
production ready code. We have no liability on this particular code under any circumstances; 
users should use this code on 	their own risk. All software, hardware and othr products that 
are referenced in these materials belong to the respective vendor who developed or who owns 
this product.

/*******************************************************************************************
