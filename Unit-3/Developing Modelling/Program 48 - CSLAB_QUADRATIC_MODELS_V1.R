
/*******************************************************************************************

File Name       :   CSLAB_QUADRATIC_MODELS_V1
Purpose 	:   A Program for Quadratic Models in R
Author		:   Durga Prasad
Reviewer 	:   Jothi Periasamy
Date and Time	:   14/01/2019 22:37 hrs
Version		:   1.0	
Change History 	: 

____________________________________________________________________________________________

	Who				   When 			  Why
____________________________________________________________________________________________


	DP				14/01/2019		  Initital Release 

____________________________________________________________________________________________


/******************************************************************************************* 

## Program Description : A Program for Quadratic Models in R

## R Development Environment & Runtime - R Studio, Anaconda, Jupyter Notebook  
  
vAR_CSLAB_A <- structure(list(Time = c(0, 1, 2, 4, 6, 8, 9, 10, 11, 12, 13, 14, 15, 16, 18, 19, 20, 21, 22, 24, 25, 26, 7, 28, 29, 30), Counts = c(126.6, 101.8, 71.6, 101.6, 68.1, 62.9, 45.5, 41.9, 46.3, 34.1, 38.2, 41.7, 24.7, 41.5, 36.6, 19.6, 
22.8, 29.6, 23.5, 15.3, 13.4, 26.8, 9.8, 18.8, 25.9, 19.3)), .Names = c("Time", "Counts"),row.names = c(1L, 2L, 3L, 5L, 7L, 9L, 10L, 11L, 12L, 13L, 14L, 15L, 16L, 17L, 19L, 20L, 21L, 22L, 23L, 25L, 26L, 27L, 28L, 29L, 30L, 31L),class = "data.frame")

attach(vAR_CSLAB_A)

names(vAR_CSLAB_A)

linear.model <-lm(Counts ~ Time)

summary(linear.model)

plot(Time, Counts, pch=16, ylab = "Counts ", cex.lab = 1.3, col = "red" )

abline(lm(Counts ~ Time), col = "blue")


/*******************************************************************************************
  
Disclaimer.

      We are providing this code block strictly for learning and researching, this is not a 
production ready code. We have no liability on this particular code under any circumstances; 
users should use this code on their own risk. All software, hardware and other products that 
are referenced in these materials belong to the respective vendor who developed or who owns 
this product.

/*******************************************************************************************

