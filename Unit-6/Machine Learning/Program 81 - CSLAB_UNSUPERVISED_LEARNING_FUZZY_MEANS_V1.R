
/*******************************************************************************************

File Name       :   CSLAB_UNSUPERVISED_LEARNING_FUZZY_MEANS_V1
Purpose 	:   A Program for Unsupervised Learning (Fuzzy Means Clustering) in R
Author		:   Durga Prasad
Reviewer 	:   Jothi Periasamy
Date and Time	:   15/01/2019 18:27 hrs
Version		:   1.0	
Change History 	: 

____________________________________________________________________________________________

	Who				   When 			  Why
____________________________________________________________________________________________


	DP				15/01/2019		    Initital Release 

____________________________________________________________________________________________


/*******************************************************************************************
  
## Program Description : A Program for Unsupervised Learning (Fuzzy Means Clustering) in R  

## R Development Environment & Runtime - R Studio, Anaconda, Jupyter Notebook 

vAR_CSLAB_km <- kmeans(iris[,1:4], 3)

plot(iris[,1], iris[,2], col=km$cluster)

points(km$centers[,c(1,2)], col=1:3, pch=8, cex=2)

table(km$cluster, iris$Species)

vAR_CSLAB_sampleiris <- iris[sample(1:150, 40),]

vAR_CSLAB_distance <- dist(vAR_CSLAB_sampleiris[,-5], method="euclidean")

vAR_CSLAB_cluster <- hclust(vAR_CSLAB_distance, method="average")

plot(vAR_CSLAB_cluster, hang=-1, labels=vAR_CSLAB_sampleiris$Species)

library(e1071)

vAR_CSLAB_result <- cmeans(iris[,-5], 3, 100, m=2, method="cmeans")

plot(iris[,1], iris[,2], col=vAR_CSLAB_result$cluster)

points(vAR_CSLAB_result$centers[,c(1,2)], col=1:3, pch=8, cex=2)

vAR_CSLAB_result$membership[1:3,]


/*******************************************************************************************
  Disclaimer.

      We are providing this code block strictly for learning and researching, this is not a 
production ready code. We have no liability on this particular code under any circumstances; 
users should use this code on their own risk. All software, hardware and othr products that 
are referenced in these materials belong to the respective vendor who developed or who owns 
this product.

/*******************************************************************************************