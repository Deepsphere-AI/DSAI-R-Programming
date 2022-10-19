
/*******************************************************************************************

File Name       :   CSLAB_DATA_INTEGRATION_MERGE_V1
Purpose 	:   A Program for Data Integration - Cbind Function in R
Author		:   Durga Prasad
Reviewer 	:   Jothi Periasamy
Date and Time	:   16/01/2019 20:30 hrs
Version		:   1.0	
Change History 	: 

____________________________________________________________________________________________

	Who				   When 			  Why
____________________________________________________________________________________________


	DP				16/01/2019		  Initital Release 

____________________________________________________________________________________________


/*******************************************************************************************
 	
## Program Description : A Program for Data Integration - Cbind Function in R

## R Development Environment & Runtime - R Studio, Anaconda, Jupyter

vAR_CSLAB_left <- data.frame(id=c(2:7), y2=rnorm(6,100,5))

head(vAR_CSLAB_left)

vAR_CSLAB_right <- data.frame(id=rep(1:4,each=2), z2=sample(letters,8, replace=TRUE))

head(vAR_CSLAB_right)

merge(vAR_CSLAB_left, vAR_CSLAB_right)

/*******************************************************************************************
Disclaimer.

      We are providing this code block strictly for learning and researching, this is not a 
production ready code. We have no liability on this particular code under any circumstances; 
users should use this code on 	their own risk. All software, hardware and othr products that 
are referenced in these materials belong to the respective vendor who developed or who owns 
this product.

/*******************************************************************************************
