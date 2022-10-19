
/*******************************************************************************************

File Name       :   CSLAB_DENSITY_PLOT_V1
Purpose 	:   A Program for Density Plot in R  
Author		:   Durga Prasad
Reviewer 	:   Jothi Periasamy
Date and Time	:   16/01/2019 00:48 hrs
Version		:   1.0	
Change History 	: 

____________________________________________________________________________________________

	Who				   When 			  Why
____________________________________________________________________________________________


	DP				16/01/2019		    Initital Release 

____________________________________________________________________________________________


/*******************************************************************************************

## Program Description : A Program for Density Plot in R  

## R Development Environment & Runtime - R Studio, Anaconda, Jupyter

vAR_CSLAB_DF <- data.frame(group = rep(c("Above", "Below"), each=10), x = rep(1:10, 2), y = c(runif(10, 0, 1), runif(10, -1, 0)))

plot(c(0,12),range(vAR_CSLAB_DF$y),type = "n")

barplot(height = vAR_CSLAB_DF$y[vAR_CSLAB_DF$group == 'Above'], add = TRUE,axes = FALSE)

barplot(height = vAR_CSLAB_DF$y[vAR_CSLAB_DF$group == 'Below'], add = TRUE,axes = FALSE)

hist(y, freq=TRUE, breaks=10)

plot(density(y), col="red")

/*******************************************************************************************
  Disclaimer.

      We are providing this code block strictly for learning and researching, this is not a 
production ready code. We have no liability on this particular code under any circumstances; 
users should use this code on their own risk. All software, hardware and othr products that 
are referenced in these materials belong to the respective vendor who developed or who owns 
this product.

/*******************************************************************************************