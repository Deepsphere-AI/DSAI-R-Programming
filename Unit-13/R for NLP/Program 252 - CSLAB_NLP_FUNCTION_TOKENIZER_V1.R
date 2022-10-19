
/*******************************************************************************************

File Name       :   CSLAB_NLP_FUNCTION_TOKENIZER_V1
Purpose 	:   A Program for Tokenizer Function using NLP in R
Author		:   Durga Prasad
Reviewer 	:   Jothi Periasamy
Date and Time	:   22/01/2019 14:38 hrs
Version		:   1.0	
Change History 	: 

____________________________________________________________________________________________

	Who				   When 			  Why
____________________________________________________________________________________________


	DP				22/01/2019		  Initital Release 

____________________________________________________________________________________________


/*******************************************************************************************
 	
## Program Description : A Program for Tokenizer Function using NLP in R

## R Development Environment & Runtime - R Studio, Anaconda, Jupyter

## A simple text.
vAR_CSLAB_s <- String("  First sentence.  Second sentence.  ")

## Use a pre-built regexp (span) tokenizer:
wordpunct_tokenizer

wordpunct_tokenizer(vAR_CSLAB_s)

## Turn into a token tokenizer:
vAR_CSLAB_tt <- as.Token_Tokenizer(wordpunct_tokenizer)

vAR_CSLAB_tt(s)

## Of course, in this case we could simply have done
vAR_CSLAB_s[wordpunct_tokenizer(vAR_CSLAB_s)]

vAR_CSLAB_scan_tokenizer <- function(x)
    scan(text = as.character(x), what = "character", quote = "", 
         quiet = TRUE)

## Create a token tokenizer from this:
vAR_CSLAB_tt <- Token_Tokenizer(vAR_CSLAB_scan_tokenizer)

## Turn into a span tokenizer:
vAR_CSLAB_st <- as.Span_Tokenizer(vAR_CSLAB_tt)
st(vAR_CSLAB_s)

## Checking tokens from spans:
vAR_CSLAB_s[st(vAR_CSLAB_s)]


/*******************************************************************************************
Disclaimer.

      We are providing this code block strictly for learning and researching, this is not a 
production ready code. We have no liability on this particular code under any circumstances; 
users should use this code on 	their own risk. All software, hardware and othr products that 
are referenced in these materials belong to the respective vendor who developed or who owns 
this product.

/*******************************************************************************************
