
/*******************************************************************************************

File Name       :   CSLAB_EXAMPLE_SPREAD_FUNCTION_V1
Purpose 	:   A Program for Example of Spread Function in R
Author		:   Durga Prasad
Reviewer 	:   Jothi Periasamy
Date and Time	:   15/01/2019 00:28 hrs
Version		:   1.0	
Change History 	: 

____________________________________________________________________________________________

	Who				   When 			  Why
____________________________________________________________________________________________


	DP				04/03/2015		  Initital Release 

____________________________________________________________________________________________


/*******************************************************************************************

## Program Description : A Program for Example of Spread Function in R

## R Development Environment & Runtime - R Studio, Anaconda, Jupyter Notebook 

install.packages("tidyr")

library("tidyr")

# Create a messy dataset

vAR_CSLAB_messy <- data.frame(
  country = c("A", "B", "C"),
  q1_2017 = c(0.03, 0.05, 0.01),
  q2_2017 = c(0.05, 0.07, 0.02),
  q3_2017 = c(0.04, 0.05, 0.01),
  q4_2017 = c(0.03, 0.02, 0.04))

vAR_CSLAB_tidier <-vAR_CSLAB_messy

vAR_CSLAB_tidier


/*******************************************************************************************
  
Disclaimer.

      We are providing this code block strictly for learning and researching, this is not a 
production ready code. We have no liability on this particular code under any circumstances; 
users should use this code on their own risk. All software, hardware and other products that 
are referenced in these materials belong to the respective vendor who developed or who owns 
this product.

/*******************************************************************************************

