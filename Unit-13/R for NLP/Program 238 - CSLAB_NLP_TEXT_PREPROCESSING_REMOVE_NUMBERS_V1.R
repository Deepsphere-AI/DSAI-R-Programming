
/*******************************************************************************************

File Name       :   CSLAB_NLP_TEXT_PREPROCESSING_REMOVE_NUMBERS_V1
Purpose 	:   A Program for Removing Numbers from a Text using NLP in R
Author		:   Durga Prasad
Reviewer 	:   Jothi Periasamy
Date and Time	:   22/01/2019 10:42 hrs
Version		:   1.0	
Change History 	: 

____________________________________________________________________________________________

	Who				   When 			  Why
____________________________________________________________________________________________


	DP				22/01/2019		  Initital Release 

____________________________________________________________________________________________


/*******************************************************************************************
 	
## Program Description : A Program for Removing Numbers from a Text using in R

## R Development Environment & Runtime - R Studio, Anaconda, Jupyter

# Create the object: text
vAR_CSLAB_text <- "<b>She</b> woke up at       6 A.M. It\'s so early!  She was only 10% awake and began drinking coffee in front of her computer."

# All lowercase
tolower(vAR_CSLAB_text)

removePunctuation(vAR_CSLAB_text)

removeNumbers(vAR_CSLAB_text)

/*******************************************************************************************
Disclaimer.

      We are providing this code block strictly for learning and researching, this is not a 
production ready code. We have no liability on this particular code under any circumstances; 
users should use this code on 	their own risk. All software, hardware and othr products that 
are referenced in these materials belong to the respective vendor who developed or who owns 
this product.

/*******************************************************************************************
