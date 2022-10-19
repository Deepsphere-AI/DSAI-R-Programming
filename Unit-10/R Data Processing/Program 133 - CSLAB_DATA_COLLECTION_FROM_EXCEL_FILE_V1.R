
/*******************************************************************************************

File Name       :   CSLAB_DATA_COLLECTION_FROM_EXCEL_FILE_V1
Purpose 	:   A Program for Data Collection from an Excel in R
Author		:   Durga Prasad
Reviewer 	:   Jothi Periasamy
Date and Time	:   14/01/2019 18:37 hrs
Version		:   1.0	
Change History 	: 

____________________________________________________________________________________________

	Who				   When 			  Why
____________________________________________________________________________________________


	DP				14/01/2019		  Initital Release 

____________________________________________________________________________________________


/*******************************************************************************************

## Program Description : A Program for Data Collection from an Excel in R

## R Development Environment & Runtime - R Studio, Anaconda, Jupyter Notebook

install.packages("readxl")

library(readxl)

vAR_INI_FILE_PATH = Sys.getenv("R_TUTORIAL")

vAR_CSLAB_Read_EXCEL <- read_excel("C:/DeepSphere.AI/R Tutorial/Unit-2/Big Data Processing/Data/Unit2_Program32_Read_EXCEL.xlsx")

head(vAR_CSLAB_Read_EXCEL)

/*******************************************************************************************
  
Disclaimer.

      We are providing this code block strictly for learning and researching, this is not a 
production ready code. We have no liability on this particular code under any circumstances; 
users should use this code on their own risk. All software, hardware and other products that 
are referenced in these materials belong to the respective vendor who developed or who owns 
this product.

/*******************************************************************************************

