
/*******************************************************************************************

File Name       :   CSLAB_DATA_INTEGRATION_RESHAPING_DCAST_V1
Purpose 	:   A Program for Data Integration - Reshaping Dcast Function in R
Author		:   Durga Prasad
Reviewer 	:   Jothi Periasamy
Date and Time	:   16/01/2019 20:52 hrs
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

require(data.table)

names(ChickWeight) <- tolower(names(ChickWeight))

vAR_CSLAB_DT <- melt(as.data.table(ChickWeight), id=2:4) # calls melt.data.table

# dcast is a S3 method in data.table from v1.9.6
dcast(vAR_CSLAB_DT, time ~ variable, fun=mean)

dcast(vAR_CSLAB_DT, diet ~ variable, fun=mean)

dcast(vAR_CSLAB_DT, diet+chick ~ time, drop=FALSE)

dcast(vAR_CSLAB_DT, diet+chick ~ time, drop=FALSE, fill=0)

# using subset
dcast(vAR_CSLAB_DT, chick ~ time, fun=mean, subset=.(time < 10 & chick < 20))

/*******************************************************************************************
Disclaimer.

      We are providing this code block strictly for learning and researching, this is not a 
production ready code. We have no liability on this particular code under any circumstances; 
users should use this code on 	their own risk. All software, hardware and othr products that 
are referenced in these materials belong to the respective vendor who developed or who owns 
this product.

/*******************************************************************************************
