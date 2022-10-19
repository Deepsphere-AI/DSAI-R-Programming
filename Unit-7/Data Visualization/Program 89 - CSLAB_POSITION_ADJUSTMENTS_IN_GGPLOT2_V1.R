
/*******************************************************************************************

File Name       :   CSLAB_POSITION_ADJUSTMENTS_IN_GGPLOT2_V1
Purpose 	:   A Program for Position Adjustments in ggplot2 in R
Author		:   Durga Prasad
Reviewer 	:   Jothi Periasamy
Date and Time	:   15/01/2019 20:49 hrs
Version		:   1.0	
Change History 	: 

____________________________________________________________________________________________

	Who				   When 			  Why
____________________________________________________________________________________________


	DP				15/01/2019		  Initital Release 

____________________________________________________________________________________________


/*******************************************************************************************
  
## Program Description : A Program for Position Adjustments in ggplot2 in R  

## R Development Environment & Runtime - R Studio, Anaconda, Jupyter Notebook 

set.seed(6298)

vAR_CSLAB_diamonds_small <- diamonds[sample(nrow(diamonds), 1000), ]

ggplot(diamonds_small, aes(x=price)) + geom_bar()
  
vAR_CSLAB_hist_cut <- ggplot(vAR_CSLAB_diamonds_small, aes(x=price, fill=cut))

vAR_CSLAB_hist_cut + geom_bar() # defaults to stacking

vAR_CSLAB_hist_cut + geom_bar(position="fill")      

/*******************************************************************************************
Disclaimer.

      We are providing this code block strictly for learning and researching, this is not a 
production ready code. We have no liability on this particular code under any circumstances; 
users should use this code on their own risk. All software, hardware and othr products that 
are referenced in these materials belong to the respective vendor who developed or who owns 
this product.

/*******************************************************************************************
