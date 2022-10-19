
/*******************************************************************************************

File Name       :   CSLAB_MAPS_IN_R_V1
Purpose 	:   A Program for Maps in R
Author		:   Durga Prasad
Reviewer 	:   Jothi Periasamy
Date and Time	:   15/01/2019 21:42 hrs
Version		:   1.0	
Change History 	: 

____________________________________________________________________________________________

	Who				   When 			  Why
____________________________________________________________________________________________


	DP				15/01/2019		  Initital Release 

____________________________________________________________________________________________


/*******************************************************************************************

## Program Description : A Program for Maps in R  

## R Development Environment & Runtime - R Studio, Anaconda, Jupyter Notebook 

install.packages("rworldmap")

library(rworldmap)

VAR_CSLAB_newmap <- getMap(resolution = "low")

plot(VAR_CSLAB_newmap, xlim = c(-20, 59), ylim = c(35, 71), asp = 1)

/*******************************************************************************************
Disclaimer.

      We are providing this code block strictly for learning and researching, this is not a 
production ready code. We have no liability on this particular code under any circumstances; 
users should use this code on their own risk. All software, hardware and othr products that 
are referenced in these materials belong to the respective vendor who developed or who owns 
this product.

/*******************************************************************************************
