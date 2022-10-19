
/*******************************************************************************************

File Name       :   CSLAB_COMPUTER_VISION_COLOR_SPACES_V1
Purpose 	:   A Program for Converting RGB to HSL in Computer Vision in R
Author		:   Durga Prasad
Reviewer 	:   Jothi Periasamy
Date and Time	:   24/01/2019 15:19 hrs
Version		:   1.0	
Change History 	: 

____________________________________________________________________________________________

	Who				   When 			  Why
____________________________________________________________________________________________


	DP				24/01/2019		  Initital Release 

____________________________________________________________________________________________


/*******************************************************************************************
 	
## Program Description : A Program for Converting RGB to HSL in Computer Vision in R

## R Development Environment & Runtime - R Studio, Anaconda, Jupyter

library(imager)

vAR_CSLAB_ENV_VARIABLE_PATH = Sys.getenv("R_TUTORIAL_PATH")

vAR_CSLAB_FILE = "Parrots.png"

vAR_CSLAB_FILE_PATH = paste(vAR_CSLAB_ENV_VARIABLE_PATH,vAR_CSLAB_FILE,sep="")

vAR_CSLAB_Parrots <- load.image(vAR_CSLAB_FILE_PATH)

vAR_CSLAB_Parrots.hsl <- RGBtoHSL(vAR_CSLAB_Parrots)

vAR_CSLAB_Parrots_chan <- channels(vAR_CSLAB_Parrots.hsl) #Extract the channels as a list of images

names(vAR_CSLAB_Parrots_chan) <- c("H","S","L")

#Plot
layout(matrix(1:3,1,3))

plot(vAR_CSLAB_Parrots_chan)

/*******************************************************************************************
Disclaimer.

      We are providing this code block strictly for learning and researching, this is not a 
production ready code. We have no liability on this particular code under any circumstances; 
users should use this code on 	their own risk. All software, hardware and othr products that 
are referenced in these materials belong to the respective vendor who developed or who owns 
this product.

/*******************************************************************************************
