
/*******************************************************************************************

File Name       :   CSLAB_CLUSTERING_DENSITY_BASED_V1
Purpose 	:   A Program for Density Based Clustering in R
Author		:   Durga Prasad
Reviewer 	:   Jothi Periasamy
Date and Time	:   15/01/2019 12:37 hrs
Version		:   1.0	
Change History 	: 

____________________________________________________________________________________________

	Who				   When 			  Why
____________________________________________________________________________________________


	DP				15/01/2019		  Initital Release 

____________________________________________________________________________________________


/*******************************************************************************************

## Program Description : A Program for Density Based Clustering in R

## R Development Environment & Runtime - R Studio, Anaconda, Jupyter Notebook 

library(fpc)

vAR_CSLAB_iris2 <- iris[-5] # remove class tags

vAR_CSLAB_ds <- dbscan(vAR_CSLAB_iris2, eps=0.42, MinPts=5)

# compare clusters with original class labels

table(vAR_CSLAB_ds$cluster, iris$Species)

plot(vAR_CSLAB_ds, vAR_CSLAB_iris2)


/*******************************************************************************************
  
Disclaimer.

      We are providing this code block strictly for learning and researching, this is not a 
production ready code. We have no liability on this particular code under any circumstances; 
users should use this code on their own risk. All software, hardware and other products that 
are referenced in these materials belong to the respective vendor who developed or who owns 
this product.

/*******************************************************************************************

	