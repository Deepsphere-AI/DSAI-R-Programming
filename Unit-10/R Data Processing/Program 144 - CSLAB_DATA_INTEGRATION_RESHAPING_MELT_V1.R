
/*******************************************************************************************

File Name       :   CSLAB_DATA_INTEGRATION_RESHAPING_MELT_V1
Purpose 	:   A Program for Data Integration - Reshaping Melt Function in R
Author		:   Durga Prasad
Reviewer 	:   Jothi Periasamy
Date and Time	:   16/01/2019 20:44 hrs
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

vAR_CSLAB_wide <- data.frame(name=c("Clay","Garrett","Addison"), test1=c(78, 93, 90), test2=c(87, 91, 97),test3=c(88, 99, 91))

vAR_CSLAB_wide

vAR_CSLAB_long <- data.frame(name=rep(c("Clay","Garrett","Addison"),each=3),test=rep(1:3, 3),score=c(78, 87, 88, 93, 91, 99, 90, 97, 91))

vAR_CSLAB_long

library(reshape2)

melt(vAR_CSLAB_wide, id.vars = "name", measure.vars = c("test1","test2","test3"))

/*******************************************************************************************
Disclaimer.

      We are providing this code block strictly for learning and researching, this is not a 
production ready code. We have no liability on this particular code under any circumstances; 
users should use this code on 	their own risk. All software, hardware and othr products that 
are referenced in these materials belong to the respective vendor who developed or who owns 
this product.

/*******************************************************************************************
