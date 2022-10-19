
/*******************************************************************************************

File Name       :   CSLAB_COMPUTER_VISION_IMAGE_LISTS_V1
Purpose 	:   A Program for Image Lists in Computer Vision in R
Author		:   Durga Prasad
Reviewer 	:   Jothi Periasamy
Date and Time	:   23/01/2019 12:47 hrs
Version		:   1.0	
Change History 	: 

____________________________________________________________________________________________

	Who				   When 			  Why
____________________________________________________________________________________________


	DP				22/01/2019		  Initital Release 

____________________________________________________________________________________________


/*******************************************************************************************
 	
## Program Description : A Program for Image Lists in Computer Vision in R

## R Development Environment & Runtime - R Studio, Anaconda, Jupyter

vAR_CSLAB_noise <- array(runif(5*5*5*3),c(5,5,5,3)) #5x5 pixels, 5 frames, 3 colours. All noise

vAR_CSLAB_noise <- as.cimg(vAR_CSLAB_noise)

#vAR_CSLAB_noise

imgradient(parrots,"xy") %>% class

imgradient(parrots,"xy") %>% plot

/*******************************************************************************************
Disclaimer.

      We are providing this code block strictly for learning and researching, this is not a 
production ready code. We have no liability on this particular code under any circumstances; 
users should use this code on 	their own risk. All software, hardware and othr products that 
are referenced in these materials belong to the respective vendor who developed or who owns 
this product.

/*******************************************************************************************
