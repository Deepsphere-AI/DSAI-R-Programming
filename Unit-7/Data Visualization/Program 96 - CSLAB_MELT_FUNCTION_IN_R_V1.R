
/*******************************************************************************************

File Name       :   CSLAB_MELT_FUNCTION_IN_R_V1
Purpose 	:   A Program for Melt Function in R
Author		:   Durga Prasad
Reviewer 	:   Jothi Periasamy
Date and Time	:   15/01/2019 22:33 hrs
Version		:   1.0	
Change History 	: 

____________________________________________________________________________________________

	Who				   When 			  Why
____________________________________________________________________________________________


	DP				15/01/2019		   Initital Release 

____________________________________________________________________________________________


/*******************************************************************************************

## Program Description : A Program for Melt Function in R  

## R Development Environment & Runtime - R Studio, Anaconda, Jupyter 

install.packages("reshape2")

library(reshape2)

# example data frame
vAR_CSLAB_x = data.frame(id   = c(1, 1, 2, 2), blue = c(1, 0, 1, 0), red  = c(0, 1, 0, 1))

# collapse the data frame
melt(data = vAR_CSLAB_x, id.vars = "id", measure.vars = c("blue", "red"))

/*******************************************************************************************
Disclaimer.

      We are providing this code block strictly for learning and researching, this is not a 
production ready code. We have no liability on this particular code under any circumstances; 
users should use this code on their own risk. All software, hardware and other products that 
are referenced in these materials belong to the respective vendor who developed or who owns 
this product.

/*******************************************************************************************
