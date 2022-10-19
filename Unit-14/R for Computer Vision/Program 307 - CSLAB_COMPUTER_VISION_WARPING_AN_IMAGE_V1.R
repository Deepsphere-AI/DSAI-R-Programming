
/*******************************************************************************************

File Name       :   CSLAB_COMPUTER_VISION_WARPING_AN_IMAGE_V1
Purpose 	:   A Program for Warping an Image in Computer Vision in R
Author		:   Durga Prasad
Reviewer 	:   Jothi Periasamy
Date and Time	:   24/01/2019 17:04 hrs
Version		:   1.0	
Change History 	: 

____________________________________________________________________________________________

	Who				   When 			  Why
____________________________________________________________________________________________


	DP				24/01/2019		  Initital Release 

____________________________________________________________________________________________


/*******************************************************************************************
 	
## Program Description : A Program for Warping an Image in Computer Vision in R

## R Development Environment & Runtime - R Studio, Anaconda, Jupyter

library(imager)

vAR_CSLAB_ENV_VARIABLE_PATH = Sys.getenv("R_TUTORIAL_PATH")

vAR_CSLAB_FILE = "Parrots.png"

vAR_CSLAB_FILE_PATH = paste(vAR_CSLAB_ENV_VARIABLE_PATH,vAR_CSLAB_FILE,sep="")

vAR_CSLAB_Parrots <- load.image(vAR_CSLAB_FILE_PATH)

vAR_CSLAB_thmb <- resize(vAR_CSLAB_Parrots,-10,-10)

map.shift <- function(x,y) list(x=x+10,y=y+30)

imwarp(vAR_CSLAB_Parrots,map=map.shift) %>% plot

/*******************************************************************************************
Disclaimer.

      We are providing this code block strictly for learning and researching, this is not a 
production ready code. We have no liability on this particular code under any circumstances; 
users should use this code on 	their own risk. All software, hardware and othr products that 
are referenced in these materials belong to the respective vendor who developed or who owns 
this product.

/*******************************************************************************************
