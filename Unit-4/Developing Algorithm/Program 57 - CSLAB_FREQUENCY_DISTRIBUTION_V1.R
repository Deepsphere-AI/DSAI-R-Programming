
/*******************************************************************************************

File Name       :   CSLAB_FREQUENCY_DISTRIBUTION_V1
Purpose 	:   A Program for Example of Frequency Distribution in R
Author		:   Durga Prasad
Reviewer 	:   Jothi Periasamy
Date and Time	:   15/01/2019 10:13 hrs
Version		:   1.0	
Change History 	: 

____________________________________________________________________________________________

	Who				   When 			  Why
____________________________________________________________________________________________


	DP				15/01/2019		  Initital Release 

____________________________________________________________________________________________


/*******************************************************************************************

## Program Description : A Program for Example of Frequency Distribution in R

## R Development Environment & Runtime - R Studio, Anaconda, Jupyter Notebook 
  
vAR_CSLAB_duration = faithful$eruptions 

range(vAR_CSLAB_duration) 

vAR_CSLAB_breaks = seq(1.5, 5.5, by=0.5)    # half-integer sequence 

vAR_CSLAB_breaks

vAR_CSLAB_duration.cut = cut(vAR_CSLAB_duration, vAR_CSLAB_breaks, right=FALSE)

vAR_CSLAB_duration.freq = table(vAR_CSLAB_duration.cut)

vAR_CSLAB_duration.freq 

vAR_CSLAB_duration.cut
 

/*******************************************************************************************
  
Disclaimer.

      We are providing this code block strictly for learning and researching, this is not a 
production ready code. We have no liability on this particular code under any circumstances; 
users should use this code on their own risk. All software, hardware and other products that 
are referenced in these materials belong to the respective vendor who developed or who owns 
this product.

/*******************************************************************************************

