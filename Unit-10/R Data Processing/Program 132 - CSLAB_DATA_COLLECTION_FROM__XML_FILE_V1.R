
/*******************************************************************************************

File Name       :   CSLAB_DATA_COLLECTION_FROM_XML_FILE_V1
Purpose 	:   A Program for Data Collection from a Website (XML) in R
Author		:   Durga Prasad
Reviewer 	:   Jothi Periasamy
Date and Time	:   14/01/2019 18:22 hrs
Version		:   1.0	
Change History 	: 

____________________________________________________________________________________________

	Who				   When 			  Why
____________________________________________________________________________________________


	DP				14/01/2019		  Initital Release 

____________________________________________________________________________________________


/*******************************************************************************************

## Program Description : A Program for Data Collection from a Website (XML) in R

## R Development Environment & Runtime - R Studio, Anaconda, Jupyter Notebook

vAR_INI_FILE_PATH = Sys.getenv("R_TUTORIAL")

install.packages("XML")

library(XML)

vAR_CSLAB_url <- "C:/DeepSphere.AI/R Tutorial/Unit-2/Big Data Processing/Data/Unit2_Program31_Read_XML.xml"

vAR_CSLAB_indata <- xmlToDataFrame(vAR_CSLAB_url)

head(vAR_CSLAB_indata)

/*******************************************************************************************
  
Disclaimer.

      We are providing this code block strictly for learning and researching, this is not a 
production ready code. We have no liability on this particular code under any circumstances; 
users should use this code on their own risk. All software, hardware and other products that 
are referenced in these materials belong to the respective vendor who developed or who owns 
this product.

/*******************************************************************************************

