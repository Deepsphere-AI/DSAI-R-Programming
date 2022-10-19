
/*******************************************************************************************

File Name       :   CSLAB_NLP_WORD_STEMMING_ON_A_DOCUMENT_V1
Purpose 	:   A Program for Word Stemming on a Document using NLP in R
Author		:   Durga Prasad
Reviewer 	:   Jothi Periasamy
Date and Time	:   22/01/2019 12:22 hrs
Version		:   1.0	
Change History 	: 

____________________________________________________________________________________________

	Who				   When 			  Why
____________________________________________________________________________________________


	DP				22/01/2019		  Initital Release 

____________________________________________________________________________________________


/*******************************************************************************************
 	
## Program Description : A Program for Word Stemming on a Document using NLP in R

## R Development Environment & Runtime - R Studio, Anaconda, Jupyter

stemDocument("In a complicated haste, Tom rushed to fix a new complication, too complicatedly.")

vAR_CSLAB_text_data <- "In a complicated haste, Tom rushed to fix a new complication, too complicatedly."

# Remove punctuation: rm_punc
vAR_CSLAB_rm_punc <- removePunctuation(vAR_CSLAB_text_data)

# Create character vector: n_char_vec
vAR_CSLAB_n_char_vec <- unlist(strsplit(vAR_CSLAB_rm_punc, split = ' '))

# Perform word stemming: stem_doc
vAR_CSLAB_stem_doc <- stemDocument(vAR_CSLAB_n_char_vec)

# Print stem_doc
vAR_CSLAB_stem_doc

# Create the completion dictionary: comp_dict
vAR_CSLAB_comp_dict <- c("In", "a", "complicate", "haste", "Tom", "rush", "to", "fix", "new", "too")

# Re-complete stemmed document: complete_doc
vAR_CSLAB_complete_doc <- stemCompletion(vAR_CSLAB_stem_doc, vAR_CSLAB_comp_dict) 

# Print complete_doc
vAR_CSLAB_complete_doc

/*******************************************************************************************
Disclaimer.

      We are providing this code block strictly for learning and researching, this is not a 
production ready code. We have no liability on this particular code under any circumstances; 
users should use this code on 	their own risk. All software, hardware and othr products that 
are referenced in these materials belong to the respective vendor who developed or who owns 
this product.

/*******************************************************************************************
