
*******************************************************************************************

File Name       :   vAR_CSLAB_CRIME_RATE_ANALYSIS
Purpose 	:   A Program for Crime Rate Analysis in R
Author		:   Durga Prasad
Reviewer 	:   Jothi Periasamy
Date and Time	:   16/01/2019 12:13 hrs
Version		:   1.0	
Change History 	: 

____________________________________________________________________________________________

	Who				   When 			  Why
____________________________________________________________________________________________


	DP				16/01/2019		    Initital Release 

____________________________________________________________________________________________


/*******************************************************************************************


## Program Description : A Program for Crime Rate Analysis in R  

## R Development Environment & Runtime - R Studio, Anaconda, Jupyter

vAR_CSLAB_CRIME <- read.csv("http://datasets.flowingdata.com/crimeRatesByState2005.tsv", header=TRUE, sep="\t")

vAR_CSLAB_ENV_VARIABLE_PATH = Sys.getenv("R_TUTORIAL_PATH")

vAR_CSLAB_FILE = "Crime_Rate_1.csv"

vAR_CSLAB_FILE_PATH = paste(vAR_CSLAB_ENV_VARIABLE_PATH,vAR_CSLAB_FILE,sep="")

vAR_CSLAB_CRIME <- read.table(vAR_CSLAB_FILE_PATH, header=TRUE, sep=",")

#vAR_CSLAB_CRIME <- read.table("C:/DeepSphere.AI/R Tutorial/Unit-8/Use Case Implementation/Data/Crime_Rate_1.csv", header=TRUE, sep=",")

vAR_CSLAB_CRIME

symbols(vAR_CSLAB_CRIME$murder, vAR_CSLAB_CRIME$burglary, circles=vAR_CSLAB_CRIME$population)

vAR_CSLAB_RADIUS <- sqrt( vAR_CSLAB_CRIME$population/ pi )

symbols(vAR_CSLAB_CRIME$murder, vAR_CSLAB_CRIME$burglary, circles=vAR_CSLAB_RADIUS)

symbols(vAR_CSLAB_CRIME$murder, vAR_CSLAB_CRIME$burglary, circles=vAR_CSLAB_RADIUS, inches=0.35, fg="white", bg="gray", xlab="Murder Rate", ylab="Burglary Rate")

/*******************************************************************************************
  Disclaimer.

      We are providing this code block strictly for learning and researching, this is not a 
production ready code. We have no liability on this particular code under any circumstances; 
users should use this code on their own risk. All software, hardware and othr products that 
are referenced in these materials belong to the respective vendor who developed or who owns 
this product.

/*******************************************************************************************