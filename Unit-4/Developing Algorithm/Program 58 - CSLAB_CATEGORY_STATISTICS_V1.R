
/*******************************************************************************************

File Name       :   CSLAB_CATEGORY_STATISTICS_V1
Purpose 	:   A Program for Example of Category Statistics in R
Author		:   Durga Prasad
Reviewer 	:   Jothi Periasamy
Date and Time	:   15/01/2019 10:19 hrs
Version		:   1.0	
Change History 	: 

____________________________________________________________________________________________

	Who				   When 			  Why
____________________________________________________________________________________________


	DP				15/01/2019		  Initital Release 

____________________________________________________________________________________________


/*******************************************************************************************

## Program Description : A Program for Example of Category Statistics in R

## R Development Environment & Runtime - R Studio, Anaconda, Jupyter Notebook 

library(MASS)                 # load the MASS package 

vAR_CSLAB_school = painters$School      # the painter schools 

vAR_CSLAB_c_school = vAR_CSLAB_school == "C"      # the logical index vector 

vAR_CSLAB_c_painters = painters[vAR_CSLAB_c_school, ]  # child data set

mean(vAR_CSLAB_c_painters$Composition) 

/*******************************************************************************************
  
Disclaimer.

      We are providing this code block strictly for learning and researching, this is not a 
production ready code. We have no liability on this particular code under any circumstances; 
users should use this code on their own risk. All software, hardware and other products that 
are referenced in these materials belong to the respective vendor who developed or who owns 
this product.

/*******************************************************************************************

	