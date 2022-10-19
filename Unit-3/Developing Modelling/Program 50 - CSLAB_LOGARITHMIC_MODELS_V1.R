
/*******************************************************************************************

File Name       :   CSLAB_LOGARITHMIC_MODELS_V1
Purpose 	:   A Program for Logarithmic Models in R
Author		:   Durga Prasad
Reviewer 	:   Jothi Periasamy
Date and Time	:   14/01/2019 23:21 hrs
Version		:   1.0	
Change History 	: 

____________________________________________________________________________________________

	Who				   When 			  Why
____________________________________________________________________________________________


	DP				14/01/2019		  Initital Release 

____________________________________________________________________________________________


/*******************************************************************************************   
   
## Program Description : A Program for Logarithmic Models in R

## R Development Environment & Runtime - R Studio, Anaconda, Jupyter Notebook 

vAR_CSLAB_x=c(61,610,1037,2074,3050,4087,5002,6100,7015)

vAR_CSLAB_y=c(0.401244, 0.844381, 1.18922, 1.93864, 2.76673, 3.52449, 4.21855, 5.04368, 5.80071)

plot(vAR_CSLAB_x,vAR_CSLAB_y)

vAR_CSLAB_Estimate = lm(vAR_CSLAB_y ~ vAR_CSLAB_x)

abline(vAR_CSLAB_Estimate)

vAR_CSLAB_x=c(61,610,1037,2074,3050,4087,5002,6100,7015)

vAR_CSLAB_y=c(0.974206,1.16716,1.19879,1.28192,1.30739,1.32019,1.35494,1.36941,1.37505)

vAR_CSLAB_logEstimate = lm(vAR_CSLAB_y ~ log(vAR_CSLAB_x))


/*******************************************************************************************
  
Disclaimer.

      We are providing this code block strictly for learning and researching, this is not a 
production ready code. We have no liability on this particular code under any circumstances; 
users should use this code on their own risk. All software, hardware and other products that 
are referenced in these materials belong to the respective vendor who developed or who owns 
this product.

/*******************************************************************************************

