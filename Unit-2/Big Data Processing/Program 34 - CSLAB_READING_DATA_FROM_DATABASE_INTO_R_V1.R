
/*******************************************************************************************

File Name       :   CSLAB_READING_DATA_FROM_DATABASE_INTO_R_V1
Purpose 	:   A Program for Importing a Data from SAP HANA Database in R
Author		:   Durga Prasad
Reviewer 	:   Jothi Periasamy
Date and Time	:   14/01/2019 17:29 hrs
Version		:   1.0	
Change History 	: 

____________________________________________________________________________________________

	Who				 When 			       Why
____________________________________________________________________________________________


	DP			      14/01/2019		  Initital Release 

____________________________________________________________________________________________


/*******************************************************************************************
  
## Program Description : A Program for Importing a Data SAP HANA Database in R

## R Development Environment & Runtime - R Studio, Anaconda, Jupyter Notebook

install.packages("plotrix")

install.packages("RODBC")

library("plotrix")  

library("RODBC")  

vAR_CSLAB_ENV_VARIABLE_PATH = Sys.getenv("R_TUTORIAL_PATH")

#vAR_CSLAB_ch<-odbcConnect("DS",uid="DURGA",pwd="Delhi123")  

#vAR_CSLAB_res<-sqlFetch(vAR_CSLAB_ch,"DURGA.TICKETS")
 
#barplot(vAR_CSLAB_res$TICKETS,names.arg=vAR_CSLAB_res$CARRIER, main="Tickets for December 2015") 

#odbcClose(vAR_CSLAB_ch)

/*******************************************************************************************
Disclaimer.

      We are providing this code block strictly for learning and researching, this is not a 
production ready code. We have no liability on this particular code under any circumstances; 
users should use this code on their own risk. All software, hardware and othr products that 
are referenced in these materials belong to the respective vendor who developed or who owns 
this product.

/*******************************************************************************************


