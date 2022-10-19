
/*******************************************************************************************

File Name       :   CSLAB_SUBSETTING_INTEGER_MATCHING_V1
Purpose 	:   A Program for Matching (Integer Subsetting) in R
Author		:   Durga Prasad
Reviewer 	:   Jothi Periasamy
Date and Time	:   17/01/2019 10:42 hrs
Version		:   1.0	
Change History 	: 

____________________________________________________________________________________________

	Who				   When 			  Why
____________________________________________________________________________________________


	DP				17/01/2019		  Initital Release 

____________________________________________________________________________________________


/*******************************************************************************************
 	
## Program Description : A Program for Matching (Integer Subsetting) in R

## R Development Environment & Runtime - R Studio, Anaconda, Jupyter

vAR_CSLAB_grades <- c(1, 2, 2, 3, 1)

vAR_CSLAB_info <- data.frame(
  
    vAR_CSLAB_grade = 3:1,
  
    vAR_CSLAB_desc = c("Excellent", "Good", "Poor"),
  
    vAR_CSLAB_fail = c(F, F, T)
)

vAR_CSLAB_info

vAR_CSLAB_id <- match(vAR_CSLAB_grades, vAR_CSLAB_info$vAR_CSLAB_grade)

vAR_CSLAB_id

/*******************************************************************************************
Disclaimer.

      We are providing this code block strictly for learning and researching, this is not a 
production ready code. We have no liability on this particular code under any circumstances; 
users should use this code on 	their own risk. All software, hardware and othr products that 
are referenced in these materials belong to the respective vendor who developed or who owns 
this product.

/*******************************************************************************************
