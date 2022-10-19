
/*******************************************************************************************

File Name       :   CSLAB_EXAMPLE_HISTOGRAM_V1
Purpose 	:   A Program for Histogram in R
Author		:   Durga Prasad
Reviewer 	:   Jothi Periasamy
Date and Time	:   16/01/2019 00:12 hrs
Version		:   1.0	
Change History 	: 

____________________________________________________________________________________________

	Who				   When 			  Why
____________________________________________________________________________________________


	DP				16/01/2019		  Initital Release 

____________________________________________________________________________________________


/*******************************************************************************************

## Program Description : A Program for Histogram in R  

## R Development Environment & Runtime - R Studio, Anaconda, Jupyter

vAR_CSLAB_crime <- read.csv("http://datasets.flowingdata.com/crimeRatesByState-formatted.csv")

vAR_CSLAB_crime.new <- vAR_CSLAB_crime[crime$state != "District of Columbia",]

hist(vAR_CSLAB_crime.new$robbery, breaks=10)

/*******************************************************************************************
  
Disclaimer.

      We are providing this code block strictly for learning and researching, this is not a 
production ready code. We have no liability on this particular code under any circumstances; 
users should use this code on their own risk. All software, hardware and other products that 
are referenced in these materials belong to the respective vendor who developed or who owns 
this product.

/*******************************************************************************************

