
/*******************************************************************************************

File Name       :   CSLAB_SPATIAL_DISTRIBUTION_QUADRANT_DENSITY_V1
Purpose 	:   A Program for Quadrant Density in Spatial Distribution to in R
Author		:   Durga Prasad
Reviewer 	:   Jothi Periasamy
Date and Time	:   24/01/2019 10:37 hrs
Version		:   1.0	
Change History 	: 

____________________________________________________________________________________________

	Who				   When 			  Why
____________________________________________________________________________________________


	DP				24/01/2019		  Initital Release 

____________________________________________________________________________________________


/*******************************************************************************************
 	
## Program Description : A Program for Quadrant Density in Spatial Distribution to in R

## R Development Environment & Runtime - R Studio, Anaconda, Jupyter

# Compute the density for each quadrat
vAR_CSLAB_Q.d <- intensity(Q)

# Plot the density

plot(intensity(vAR_CSLAB_Q, image=TRUE), main=NULL, las=1)  # Plot density raster

plot(starbucks, pch=20, cex=0.6, col=rgb(0,0,0,.5), add=TRUE)  # Add points

/*******************************************************************************************
Disclaimer.

      We are providing this code block strictly for learning and researching, this is not a 
production ready code. We have no liability on this particular code under any circumstances; 
users should use this code on 	their own risk. All software, hardware and othr products that 
are referenced in these materials belong to the respective vendor who developed or who owns 
this product.

/*******************************************************************************************
