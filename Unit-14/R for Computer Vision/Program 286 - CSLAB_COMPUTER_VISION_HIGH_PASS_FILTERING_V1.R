
/*******************************************************************************************

File Name       :   CSLAB_COMPUTER_VISION_HIGH_PASS_FILTERING_V1
Purpose 	:   A Program for Apply High Pass Filtering on an Image in Computer Vision in R
Author		:   Durga Prasad
Reviewer 	:   Jothi Periasamy
Date and Time	:   23/01/2019 11:45 hrs
Version		:   1.0	
Change History 	: 

____________________________________________________________________________________________

	Who				   When 			  Why
____________________________________________________________________________________________


	DP				22/01/2019		  Initital Release 

____________________________________________________________________________________________


/*******************************************************************************************
 	
## Program Description : A Program for Apply High Pass Filtering on an Image in Computer Vision in R

## R Development Environment & Runtime - R Studio, Anaconda, Jupyter

library(EBImage)

vAR_CSLAB_ENV_VARIABLE_PATH = Sys.getenv("R_TUTORIAL_PATH")

vAR_CSLAB_FILE = "Birds.jpg"

vAR_CSLAB_FILE_PATH = paste(vAR_CSLAB_ENV_VARIABLE_PATH,vAR_CSLAB_FILE,sep="")

vAR_CSLAB_Image <- readImage(vAR_CSLAB_FILE_PATH)

#Resizing the image
vAR_CSLAB_Image1 <- resize(vAR_CSLAB_Image, 500) 
display(vAR_CSLAB_Image1)

# FLip and Flop of image
vAR_CSLAB_Image2 <- flip(vAR_CSLAB_Image)
display(vAR_CSLAB_Image2)

vAR_CSLAB_Image3 = flop(vAR_CSLAB_Image)
display(vAR_CSLAB_Image3)

#Image Rotation
vAR_CSLAB_Image4 <- translate(rotate(vAR_CSLAB_Image, 90), c(50, 0))
display(vAR_CSLAB_Image4)

colorMode(vAR_CSLAB_Image) <- Grayscale

display(vAR_CSLAB_Image)

vAR_CSLAB_fhi = matrix(1, nc=3, nr=3)

vAR_CSLAB_fhi[2,2] = -8

vAR_CSLAB_imgfhi = filter2(vAR_CSLAB_Image, vAR_CSLAB_fhi)

display(vAR_CSLAB_imgfhi)

/*******************************************************************************************
Disclaimer.

      We are providing this code block strictly for learning and researching, this is not a 
production ready code. We have no liability on this particular code under any circumstances; 
users should use this code on 	their own risk. All software, hardware and othr products that 
are referenced in these materials belong to the respective vendor who developed or who owns 
this product.

/*******************************************************************************************
