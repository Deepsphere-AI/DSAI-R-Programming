
/*******************************************************************************************

File Name       :   CSLAB_READING_DATA_FROM_HADOOP_INTO_R_V1
Purpose 	:   A Program for Reading Data from Hadoop (Hive) into R
Author		:   Durga Prasad
Reviewer 	:   Jothi Periasamy
Date and Time	:   14/01/2019 18:16 hrs
Version		:   1.0	
Change History 	: 

____________________________________________________________________________________________

	Who				 When 			       Why
____________________________________________________________________________________________


	DP			      14/01/2019		  Initital Release 

____________________________________________________________________________________________


/*******************************************************************************************

## Program Description : A Program for Reading Data from Hadoop (Hive) into R

## R Development Environment & Runtime - R Studio, Anaconda, Jupyter Notebook

install.packages("RHive")

library("RHive")

vAR_INI_FILE_PATH = Sys.getenv("R_TUTORIAL")

#rhive.init(hive = "/usr/lib/hive", hadoop="/usr/lib/hadoop", verbose= FALSE)

#vAR_CSLAB_a <- rhive.query ("select * from ge_og_Account")

#Sys.setenv(HIVE_HOME="/usr/lib/hive") 

#Sys.setenv(HADOOP_HOME="/usr/lib/hadoop") 

#rhive.env(ALL=TRUE) 

#rhive.init() 

#rhive.connect(hiveServer2=TRUE)

#rhive.query("select * from ge_og_account")

/*******************************************************************************************
Disclaimer.

      We are providing this code block strictly for learning and researching, this is not a 
production ready code. We have no liability on this particular code under any circumstances; 
users should use this code on their own risk. All software, hardware and othr products that 
are referenced in these materials belong to the respective vendor who developed or who owns 
this product.

/*******************************************************************************************


