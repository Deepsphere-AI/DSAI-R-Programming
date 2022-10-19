
/*******************************************************************************************

File Name       :   CSLAB_KMEANS_CLUSTERING_V1
Purpose 	:   A Program for K-Means Clustering in R
Author		:   Durga Prasad
Reviewer 	:   Jothi Periasamy
Date and Time	:   15/01/2019 11:47 hrs
Version		:   1.0	
Change History 	: 

____________________________________________________________________________________________

	Who				   When 			  Why
____________________________________________________________________________________________


	DP				15/01/2019		  Initital Release 

____________________________________________________________________________________________


/*******************************************************************************************

## Program Description : A Program for K-Means Clustering in R

## R Development Environment & Runtime - R Studio, Anaconda, Jupyter Notebook 
  
set.seed(1234)

vAR_CSLAB_x <- rnorm(24, mean=rep(1:3, each=4), sd=0.2)

vAR_CSLAB_y <- rnorm(24, mean=rep(c(1,2,1), each=4), sd=0.2)

vAR_CSLAB_data <- data.frame(vAR_CSLAB_x, vAR_CSLAB_y)

plot(vAR_CSLAB_x, vAR_CSLAB_y, col="blue", pch=19, cex=1)

text(vAR_CSLAB_x+0.05, vAR_CSLAB_y+0.05, labels=as.character(1:24))

# k-means clustering

vAR_CSLAB_kmeansObj <- kmeans(vAR_CSLAB_data, centers=3)

names(vAR_CSLAB_kmeansObj)

# variance within clusters 
vAR_CSLAB_kmeansObj$withinss

vAR_CSLAB_kmeansObj$cluster

plot(vAR_CSLAB_x, vAR_CSLAB_y, col=vAR_CSLAB_kmeansObj$cluster, pch=19, cex=1)

points(vAR_CSLAB_kmeansObj$centers, col=1:3, pch=4, cex=3, lwd=3)

par(mfrow=c(2,2), mar=c(3,3,3,3))

for(i in 1:4){
    vAR_CSLAB_chartName <- paste("Chart",i, sep="_")
    vAR_CSLAB_kmeansObj <- kmeans(vAR_CSLAB_data, centers=4)
    plot(vAR_CSLAB_x, vAR_CSLAB_y, col=vAR_CSLAB_kmeansObj$cluster, pch=19, cex=1, main=chartName)
    points(vAR_CSLAB_kmeansObj$centers, col=1:5, pch=4, cex=3, lwd=3)  
}

/*******************************************************************************************
  
Disclaimer.

      We are providing this code block strictly for learning and researching, this is not a 
production ready code. We have no liability on this particular code under any circumstances; 
users should use this code on their own risk. All software, hardware and other products that 
are referenced in these materials belong to the respective vendor who developed or who owns 
this product.

/*******************************************************************************************

	