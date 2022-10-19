
/*******************************************************************************************

File Name       :   CSLAB_MEASURES_OF_CENTRAL_TENDENCY_V1
Purpose 	:   A Program for Measures of Central Tendency in R
Author		:   Durga Prasad
Reviewer 	:   Jothi Periasamy
Date and Time	:   15/01/2019 00:13 hrs
Version		:   1.0	
Change History 	: 

____________________________________________________________________________________________

	Who				   When 			  Why
____________________________________________________________________________________________


	DP				15/01/2019		  Initital Release 

____________________________________________________________________________________________


/*******************************************************************************************

## Program Description : A Program for Measures of Central Tendency in R

## R Development Environment & Runtime - R Studio, Anaconda, Jupyter Notebook 

vAR_CSLAB_country <- c("Canada","China","England","Germany","Greece","Other")

vAR_CSLAB_f <- c(5,7,2,5,3,4)

barplot(vAR_CSLAB_f, names=vAR_CSLAB_country)

mean(vAR_CSLAB_f)

weighted.mean(vAR_CSLAB_f)

median(vAR_CSLAB_f)

fivenum(vAR_CSLAB_f)

quantile(vAR_CSLAB_f)

/*******************************************************************************************
  
Disclaimer.

      We are providing this code block strictly for learning and researching, this is not a 
production ready code. We have no liability on this particular code under any circumstances; 
users should use this code on their own risk. All software, hardware and other products that 
are referenced in these materials belong to the respective vendor who developed or who owns 
this product.

/*******************************************************************************************

