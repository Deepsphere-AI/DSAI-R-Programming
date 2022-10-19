
/*******************************************************************************************

File Name       :   CSLAB_NLP_STEMMING_V1
Purpose 	:   A Program for Stemming using NLP in R
Author		:   Durga Prasad
Reviewer 	:   Jothi Periasamy
Date and Time	:   22/01/2019 17:21 hrs
Version		:   1.0	
Change History 	: 

____________________________________________________________________________________________

	Who				   When 			  Why
____________________________________________________________________________________________


	DP				22/01/2019		  Initital Release 

____________________________________________________________________________________________


/*******************************************************************************************
 	
## Program Description : A Program for Stemming using NLP in R

## R Development Environment & Runtime - R Studio, Anaconda, Jupyter

install.packages("pacman")

require("pacman")

pacman::p_load(textstem, dplyr)

data(presidential_debates_2012)

vAR_CSLAB_dw <- c('driver', 'drive', 'drove', 'driven', 'drives', 'driving')

stem_words(vAR_CSLAB_dw)

/*******************************************************************************************
Disclaimer.

      We are providing this code block strictly for learning and researching, this is not a 
production ready code. We have no liability on this particular code under any circumstances; 
users should use this code on 	their own risk. All software, hardware and othr products that 
are referenced in these materials belong to the respective vendor who developed or who owns 
this product.

/*******************************************************************************************
