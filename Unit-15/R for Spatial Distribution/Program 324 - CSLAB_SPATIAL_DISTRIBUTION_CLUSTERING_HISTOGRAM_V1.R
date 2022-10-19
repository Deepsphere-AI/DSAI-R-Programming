
/*******************************************************************************************

File Name       :   CSLAB_SPATIAL_DISTRIBUTION_CLUSTERING_HISTOGRAM_V1
Purpose 	:   A Program for Clustering & Histogram Plot in Spatial Distribution to in R
Author		:   Durga Prasad
Reviewer 	:   Jothi Periasamy
Date and Time	:   24/01/2019 12:59 hrs
Version		:   1.0	
Change History 	: 

____________________________________________________________________________________________

	Who				   When 			  Why
____________________________________________________________________________________________


	DP				24/01/2019		  Initital Release 

____________________________________________________________________________________________


/*******************************************************************************************
 	
## Program Description : A Program for Clustering & Histogram Plot in Spatial Distribution to in R

## R Development Environment & Runtime - R Studio, Anaconda, Jupyter

vAR_CSLAB_ann.p <- mean(nndist(starbucks.km, k=1))

vAR_CSLAB_ann.p

vAR_CSLAB_n     <- 599L               # Number of simulations

vAR_CSLAB_ann.r <- vector(length = vAR_CSLAB_n) # Create an empty object to be used to store simulated ANN values

for (i in 1:vAR_CSLAB_n){
  vAR_CSLAB_rand.p   <- rpoint(n=starbucks.km$n, win=ma.km)  # Generate random point locations
    
  vAR_CSLAB_ann.r[i] <- mean(nndist(vAR_CSLAB_rand.p, k=1))  # Tally the ANN values
}

hist(vAR_CSLAB_ann.r, main=NULL, las=1, breaks=40, col="bisque", xlim=range(vAR_CSLAB_ann.p, vAR_CSLAB_ann.r))

abline(v=vAR_CSLAB_ann.p, col="blue")

/*******************************************************************************************
Disclaimer.

      We are providing this code block strictly for learning and researching, this is not a 
production ready code. We have no liability on this particular code under any circumstances; 
users should use this code on 	their own risk. All software, hardware and othr products that 
are referenced in these materials belong to the respective vendor who developed or who owns 
this product.

/*******************************************************************************************
