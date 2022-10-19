
/*******************************************************************************************

File Name       :   CSLAB_NLP_FUNCTION_DATE-TIME_V1
Purpose 	:   A Program for Date Time Function using NLP in R
Author		:   Durga Prasad
Reviewer 	:   Jothi Periasamy
Date and Time	:   22/01/2019 14:52 hrs
Version		:   1.0	
Change History 	: 

____________________________________________________________________________________________

	Who				   When 			  Why
____________________________________________________________________________________________


	DP				22/01/2019		  Initital Release 

____________________________________________________________________________________________


/*******************************************************************************************
 	
## Program Description : A Program for Date Time Function using NLP in R

## R Development Environment & Runtime - R Studio, Anaconda, Jupyter

vAR_CSLAB_x <- c("1997",
       "1997-07",
       "1997-07-16",
       "1997-07-16T19:20+01:00",
       "1997-07-16T19:20:30+01:00",
       "1997-07-16T19:20:30.45+01:00",
       "1997-07-16T19:20:30.45Z")

vAR_CSLAB_y <- parse_ISO_8601_datetime(x)

as.Date(vAR_CSLAB_y)

as.POSIXlt(vAR_CSLAB_y)

## Subscripting and extracting components:
head(vAR_CSLAB_y, 3)

vAR_CSLAB_y$mon

/*******************************************************************************************
Disclaimer.

      We are providing this code block strictly for learning and researching, this is not a 
production ready code. We have no liability on this particular code under any circumstances; 
users should use this code on 	their own risk. All software, hardware and othr products that 
are referenced in these materials belong to the respective vendor who developed or who owns 
this product.

/*******************************************************************************************
