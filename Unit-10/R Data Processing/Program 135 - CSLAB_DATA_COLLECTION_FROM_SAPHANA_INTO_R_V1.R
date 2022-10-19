
/*******************************************************************************************

File Name       :   CSLAB_DATA_COLLECTION_FROM_SAPHANA_INTO_R_V1
Purpose 	:   A Program for Data Collection from SAP HANA Database into R
Author		:   Durga Prasad
Reviewer 	:   Jothi Periasamy
Date and Time	:   14/01/2019 19:05 hrs
Version		:   1.0	
Change History 	: 

____________________________________________________________________________________________

	Who				 When 			       Why
____________________________________________________________________________________________


	DP			      14/01/2019		  Initital Release 

____________________________________________________________________________________________


/*******************************************************************************************
  
## Program Description : A Program for Data Collection from SAP HANA Database into R

## R Development Environment & Runtime - R Studio, Anaconda, Jupyter Notebook

install.packages("plotrix")

install.packages("RODBC")

library("plotrix")  

library("RODBC")  

vAR_INI_FILE_PATH = Sys.getenv("R_TUTORIAL")

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


