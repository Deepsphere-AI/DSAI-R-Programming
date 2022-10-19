
/*******************************************************************************************

File Name       :   CSLAB_JOINING_DATASETS_V1
Purpose 	:   A Program for Joining Two Datasets in R 
Author		:   Durga Prasad
Reviewer 	:   Jothi Periasamy
Date and Time	:   15/01/2019 23:37 hrs
Version		:   1.0	
Change History 	: 

____________________________________________________________________________________________

	Who				   When 			  Why
____________________________________________________________________________________________


	DP				15/01/2019		  Initital Release 

____________________________________________________________________________________________


/*******************************************************************************************

## Program Description : A Program for Joining Two Datasets in R  

## R Development Environment & Runtime - R Studio, Anaconda, Jupyter

vAR_CSLAB_X = data.frame(id = c("a","c","d","g"), maths = c(1,3,4,7),  physics = c(1,3,4,7),  chemistry = c(1,3,4,7),  english = c(1,3,4,7))
  
vAR_CSLAB_Y = data.frame(id = c("b","c","d","e","f"),maths = c(5,6,8,9,7), physics = c(5,6,8,9,7), chemistry = c(5,6,8,9,7),english = c(5,6,8,9,7))

vAR_CSLAB_XvAR_CSLAB_Y <- merge(vAR_CSLAB_X, vAR_CSLAB_Y, by = "id")

vAR_CSLAB_XvAR_CSLAB_Y

/*******************************************************************************************
Disclaimer.

      We are providing this code block strictly for learning and researching, this is not a 
production ready code. We have no liability on this particular code under any circumstances; 
users should use this code on their own risk. All software, hardware and othr products that 
are referenced in these materials belong to the respective vendor who developed or who owns 
this product.

/*******************************************************************************************
