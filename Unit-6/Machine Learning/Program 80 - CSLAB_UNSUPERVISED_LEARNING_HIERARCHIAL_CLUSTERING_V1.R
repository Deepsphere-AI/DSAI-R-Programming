
/*******************************************************************************************

File Name       :   CSLAB_UNSUPERVISED_LEARNING_HIERARCHIAL_CLUSTERING_V1
Purpose 	:   A Program for Unsupervised Learning (Hierarchical Clustering) in R
Author		:   Durga Prasad
Reviewer 	:   Jothi Periasamy
Date and Time	:   15/01/2019 18:04 hrs
Version		:   1.0	
Change History 	: 

____________________________________________________________________________________________

	Who				   When 			  Why
____________________________________________________________________________________________


	DP				15/01/2019		    Initital Release 

____________________________________________________________________________________________


/*******************************************************************************************

## Program Description : A Program for Unsupervised Learning (Hierarchical Clustering) in R  

## R Development Environment & Runtime - R Studio, Anaconda, Jupyter Notebook 

vAR_CSLAB_idx <- sample(1:dim(iris)[1], 40)

vAR_CSLAB_irisSample <- iris[vAR_CSLAB_idx,]

vAR_CSLAB_irisSample$Species <- NULL

vAR_CSLAB_hc <- hclust(dist(vAR_CSLAB_irisSample), method="ave")

plot(vAR_CSLAB_hc, hang = -1, labels=iris$Species[vAR_CSLAB_idx])

# cut tree into 3 clusters

rect.hclust(vAR_CSLAB_hc, k=3)

groups <- cutree(vAR_CSLAB_hc, k=3)

/*******************************************************************************************
  Disclaimer.

      We are providing this code block strictly for learning and researching, this is not a 
production ready code. We have no liability on this particular code under any circumstances; 
users should use this code on their own risk. All software, hardware and othr products that 
are referenced in these materials belong to the respective vendor who developed or who owns 
this product.

/*******************************************************************************************