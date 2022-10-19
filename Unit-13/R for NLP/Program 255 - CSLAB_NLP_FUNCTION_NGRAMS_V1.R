
/*******************************************************************************************

File Name       :   CSLAB_NLP_FUNCTION_NGRAMS_V1
Purpose 	:   A Program for N-grams Function using NLP in R
Author		:   Durga Prasad
Reviewer 	:   Jothi Periasamy
Date and Time	:   22/01/2019 15:17 hrs
Version		:   1.0	
Change History 	: 

____________________________________________________________________________________________

	Who				   When 			  Why
____________________________________________________________________________________________


	DP				22/01/2019		  Initital Release 

____________________________________________________________________________________________


/*******************************************************************************************
 	
## Program Description : A Program for N-grams Function using NLP in R

## R Development Environment & Runtime - R Studio, Anaconda, Jupyter

vAR_CSLAB_s <- "The quick brown fox jumps over the lazy dog"

## Split into words:
vAR_CSLAB_w <- strsplit(vAR_CSLAB_s, " ", fixed = TRUE)[[1L]]

## Word tri-grams:
ngrams(vAR_CSLAB_w, 3L)

## Word tri-grams pasted together:
vapply(ngrams(vAR_CSLAB_w, 3L), paste, "", collapse = " ")

/*******************************************************************************************
Disclaimer.

      We are providing this code block strictly for learning and researching, this is not a 
production ready code. We have no liability on this particular code under any circumstances; 
users should use this code on 	their own risk. All software, hardware and othr products that 
are referenced in these materials belong to the respective vendor who developed or who owns 
this product.

/*******************************************************************************************
