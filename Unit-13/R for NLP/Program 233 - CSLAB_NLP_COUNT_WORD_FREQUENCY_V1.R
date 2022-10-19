
/*******************************************************************************************

File Name       :   CSLAB_NLP_COUNT_WORD_FREQUENCY_V1
Purpose 	:   A Program for Counting Word Frequency using NLP in R
Author		:   Durga Prasad
Reviewer 	:   Jothi Periasamy
Date and Time	:   22/01/2019 9:44 hrs
Version		:   1.0	
Change History 	: 

____________________________________________________________________________________________

	Who				   When 			  Why
____________________________________________________________________________________________


	DP				22/01/2019		  Initital Release 

____________________________________________________________________________________________


/*******************************************************************************************
 	
## Program Description : A Program for Counting Word Frequency using NLP in R

## R Development Environment & Runtime - R Studio, Anaconda, Jupyter

vAR_CSLAB_text <- "Text mining usually involves the process of structuring the input text. The overarching goal is, essentially, to turn text into data for analysis, via application of natural language processing (NLP) and analytical methods."

library(qdap)

vAR_CSLAB_frequent_terms <- freq_terms(vAR_CSLAB_text, 3)

vAR_CSLAB_frequent_terms

/*******************************************************************************************
Disclaimer.

      We are providing this code block strictly for learning and researching, this is not a 
production ready code. We have no liability on this particular code under any circumstances; 
users should use this code on 	their own risk. All software, hardware and othr products that 
are referenced in these materials belong to the respective vendor who developed or who owns 
this product.

/*******************************************************************************************
