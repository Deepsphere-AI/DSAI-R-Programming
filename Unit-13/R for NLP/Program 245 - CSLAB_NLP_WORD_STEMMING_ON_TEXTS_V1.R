
/*******************************************************************************************

File Name       :   CSLAB_NLP_WORD_STEMMING_ON_TEXTS_V1
Purpose 	:   A Program for Word Stemming on a Text Data using NLP in R
Author		:   Durga Prasad
Reviewer 	:   Jothi Periasamy
Date and Time	:   22/01/2019 12:04 hrs
Version		:   1.0	
Change History 	: 

____________________________________________________________________________________________

	Who				   When 			  Why
____________________________________________________________________________________________


	DP				22/01/2019		  Initital Release 

____________________________________________________________________________________________


/*******************************************************************************************
 	
## Program Description : A Program for Removing Stop Words on a Text Data using NLP in R

## R Development Environment & Runtime - R Studio, Anaconda, Jupyter

install.packages("SnowballC")

#library(SnowballC)

stemDocument(c("computational", "computers", "computation"))

# Create complicate
vAR_CSLAB_complicate <- c("complicated", "complication", "complicatedly")

# Perform word stemming: stem_doc
vAR_CSLAB_stem_doc <- stemDocument(vAR_CSLAB_complicate)

# Create the completion dictionary: comp_dict
vAR_CSLAB_comp_dict <- ("complicate")

# Perform stem completion: complete_text 
vAR_CSLAB_complete_text <- stemCompletion(vAR_CSLAB_stem_doc, vAR_CSLAB_comp_dict)

# Print complete_text
vAR_CSLAB_complete_text


/*******************************************************************************************
Disclaimer.

      We are providing this code block strictly for learning and researching, this is not a 
production ready code. We have no liability on this particular code under any circumstances; 
users should use this code on 	their own risk. All software, hardware and othr products that 
are referenced in these materials belong to the respective vendor who developed or who owns 
this product.

/*******************************************************************************************
