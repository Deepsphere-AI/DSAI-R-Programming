
/*******************************************************************************************

File Name       :   CSLAB_COMPUTER_VISION_ADJUSTING_BRIGHTNESS_V1
Purpose 	:   A Program for Adjusting Brightness of an Image in Computer Vision in R
Author		:   Durga Prasad
Reviewer 	:   Jothi Periasamy
Date and Time	:   23/01/2019 10:09 hrs
Version		:   1.0	
Change History 	: 

____________________________________________________________________________________________

	Who				   When 			  Why
____________________________________________________________________________________________


	DP				22/01/2019		  Initital Release 

____________________________________________________________________________________________


/*******************************************************************************************
 	
## Program Description : A Program for Adjusting Brightness in Computer Vision in R

## R Development Environment & Runtime - R Studio, Anaconda, Jupyter

library(EBImage)

vAR_CSLAB_ENV_VARIABLE_PATH = Sys.getenv("R_TUTORIAL_PATH")

vAR_CSLAB_FILE = "Birds.jpg"

vAR_CSLAB_FILE_PATH = paste(vAR_CSLAB_ENV_VARIABLE_PATH,vAR_CSLAB_FILE,sep="")

vAR_CSLAB_Image <- readImage(vAR_CSLAB_FILE_PATH)

vAR_CSLAB_Image1 <- vAR_CSLAB_Image + 0.2

vAR_CSLAB_Image2 <- vAR_CSLAB_Image - 0.2

display (vAR_CSLAB_Image1)

display(vAR_CSLAB_Image2)

/*******************************************************************************************
Disclaimer.

      We are providing this code block strictly for learning and researching, this is not a 
production ready code. We have no liability on this particular code under any circumstances; 
users should use this code on 	their own risk. All software, hardware and othr products that 
are referenced in these materials belong to the respective vendor who developed or who owns 
this product.

/*******************************************************************************************
