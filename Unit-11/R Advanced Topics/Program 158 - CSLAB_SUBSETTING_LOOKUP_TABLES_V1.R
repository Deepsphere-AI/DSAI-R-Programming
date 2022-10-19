
/*******************************************************************************************

File Name       :   CSLAB_SUBSETTING_LOOKUP_TABLES_V1
Purpose 	:   A Program for Look Table in R
Author		:   Durga Prasad
Reviewer 	:   Jothi Periasamy
Date and Time	:   17/01/2019 10:30 hrs
Version		:   1.0	
Change History 	: 

____________________________________________________________________________________________

	Who				   When 			  Why
____________________________________________________________________________________________


	DP				17/01/2019		  Initital Release 

____________________________________________________________________________________________


/*******************************************************************************************
 	
## Program Description : A Program for Look Table in R

## R Development Environment & Runtime - R Studio, Anaconda, Jupyter

vAR_CSLAB_x <- c("m", "f", "u", "f", "f", "m", "m")

vAR_CSLAB_lookup <- c(m = "Male", f = "Female", u = NA)

vAR_CSLAB_lookup[vAR_CSLAB_x]

unname(vAR_CSLAB_lookup[vAR_CSLAB_x])

/*******************************************************************************************
Disclaimer.

      We are providing this code block strictly for learning and researching, this is not a 
production ready code. We have no liability on this particular code under any circumstances; 
users should use this code on 	their own risk. All software, hardware and othr products that 
are referenced in these materials belong to the respective vendor who developed or who owns 
this product.

/*******************************************************************************************
