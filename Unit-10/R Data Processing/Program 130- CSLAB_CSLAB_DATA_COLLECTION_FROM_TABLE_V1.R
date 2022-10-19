
/*******************************************************************************************

File Name       :   CSLAB_CSLAB_DATA_COLLECTION_FROM_TABLE_V1
Purpose 	:   A Program for Data Collection fron Text File (Table) in R
Author		:   Durga Prasad
Reviewer 	:   Jothi Periasamy
Date and Time	:   14/01/2019 17:58 hrs
Version		:   1.0	
Change History 	: 

____________________________________________________________________________________________

	Who				   When 			  Why
____________________________________________________________________________________________


	DP				14/01/2019		  Initital Release 

____________________________________________________________________________________________


/*******************************************************************************************

## Program Description : A Program for Data Collection fron Text File (Table) in R

## R Development Environment & Runtime - R Studio, Anaconda, Jupyter Notebook

vAR_INI_FILE_PATH = Sys.getenv("R_TUTORIAL")

library(readr)

vAR_CSLAB_ENV_VARIABLE_PATH = Sys.getenv("R_TUTORIAL_PATH")

vAR_CSLAB_FILE = "Unit2_Program29_Read_TXT.txt"

vAR_CSLAB_FILE_PATH = paste(vAR_CSLAB_ENV_VARIABLE_PATH,vAR_CSLAB_FILE,sep="")

vAR_CSLAB_mydata <- read_table2(vAR_CSLAB_FILE_PATH)

#vAR_CSLAB_mydata <- read_table2("C:/DeepSphere.AI/R Tutorial/Unit-2/Big Data Processing/Data/Unit2_Program29_Read_TXT.txt")

vAR_CSLAB_mydata
/*******************************************************************************************
  
Disclaimer.

      We are providing this code block strictly for learning and researching, this is not a 
production ready code. We have no liability on this particular code under any circumstances; 
users should use this code on their own risk. All software, hardware and other products that 
are referenced in these materials belong to the respective vendor who developed or who owns 
this product.

/*******************************************************************************************

