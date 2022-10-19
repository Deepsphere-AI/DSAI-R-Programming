
/*******************************************************************************************

File Name       :   CSLAB_DATA_COLLECTION_FROM_SAS_V1
Purpose 	:   A Program for Data Collection from SAS in R
Author		:   Durga Prasad
Reviewer 	:   Jothi Periasamy
Date and Time	:   14/01/2019 18:49 hrs
Version		:   1.0	
Change History 	: 

____________________________________________________________________________________________

	Who				   When 			  Why
____________________________________________________________________________________________


	DP				14/01/2019		  Initital Release 

____________________________________________________________________________________________


/*******************************************************************************************

## Program Description : A Program for Data Collection from SAS in R

## R Development Environment & Runtime - R Studio, Anaconda, Jupyter Notebook

install.packages("foreign")

library(foreign)

vAR_INI_FILE_PATH = Sys.getenv("R_TUTORIAL")

vAR_CSLAB_mySPSSData <- read.spss("C:/DeepSphere.AI/R Tutorial/Unit-2/Big Data Processing/Data/Unit2_Program33_Read_SAS.sav")

head(vAR_CSLAB_mySPSSData)

/*******************************************************************************************
  
Disclaimer.

      We are providing this code block strictly for learning and researching, this is not a 
production ready code. We have no liability on this particular code under any circumstances; 
users should use this code on their own risk. All software, hardware and other products that 
are referenced in these materials belong to the respective vendor who developed or who owns 
this product.

/*******************************************************************************************

