
/*******************************************************************************************

File Name       :   CSLAB_SPATIAL_DISTRIBUTION_QUADRANT_DENSITY_ON_TESSESLLATED_SURFACE_V1
Purpose 	:   A Program for Quadrant Density on a Tessesllated Surface in Spatial Distribution to in R
Author		:   Durga Prasad
Reviewer 	:   Jothi Periasamy
Date and Time	:   24/01/2019 10:49 hrs
Version		:   1.0	
Change History 	: 

____________________________________________________________________________________________

	Who				   When 			  Why
____________________________________________________________________________________________


	DP				24/01/2019		  Initital Release 

____________________________________________________________________________________________


/*******************************************************************************************
 	
## Program Description : A Program for Quadrant Density on a Tessesllated Surface in Spatial Distribution to in R

## R Development Environment & Runtime - R Studio, Anaconda, Jupyter

vAR_CSLAB_starbucks.km <- rescale(starbucks, 1000, "km")

vAR_CSLAB_ma.km <- rescale(ma, 1000, "km")

vAR_CSLAB_pop.km    <- rescale(pop, 1000, "km")

vAR_CSLAB_pop.lg.km <- rescale(vAR_CSLAB_pop.km, 1000, "km")

vAR_CSLAB_brk  <- c( -Inf, 4, 6, 8 , Inf)  # Define the breaks

vAR_CSLAB_Zcut <- cut(vAR_CSLAB_pop.lg.km, breaks=vAR_CSLAB_brk, labels=1:4)  # Classify the raster

vAR_CSLAB_E    <- tess(image=vAR_CSLAB_Zcut)  # Create a tesselated surface

plot(vAR_CSLAB_E, main="", las=1)

/*******************************************************************************************
Disclaimer.

      We are providing this code block strictly for learning and researching, this is not a 
production ready code. We have no liability on this particular code under any circumstances; 
users should use this code on 	their own risk. All software, hardware and othr products that 
are referenced in these materials belong to the respective vendor who developed or who owns 
this product.

/*******************************************************************************************
