
/*******************************************************************************************

File Name       :   CSLAB_AESTHETICS_IN_GGPLOT2_V1
Purpose 	:   A Program for ggplot2 Asthetics in R
Author		:   Durga Prasad
Reviewer 	:   Jothi Periasamy
Date and Time	:   15/01/2019 20:06 hrs
Version		:   1.0	
Change History 	: 

____________________________________________________________________________________________

	Who				   When 			  Why
____________________________________________________________________________________________


	DP				15/01/2019		  Initital Release 

____________________________________________________________________________________________


/*******************************************************************************************

## Program Description : A Program for ggplot2 Asthetics in R  

## R Development Environment & Runtime - R Studio, Anaconda, Jupyter Notebook 

library(ggplot2)
 
str(mtcars)
 
vAR_CSLAB_P <- ggplot(data = mtcars, aes(x = wt, mpg))
   
vAR_CSLAB_P + geom_point()

/*******************************************************************************************
Disclaimer.

      We are providing this code block strictly for learning and researching, this is not a 
production ready code. We have no liability on this particular code under any circumstances; 
users should use this code on their own risk. All software, hardware and othr products that 
are referenced in these materials belong to the respective vendor who developed or who owns 
this product.

/*******************************************************************************************
