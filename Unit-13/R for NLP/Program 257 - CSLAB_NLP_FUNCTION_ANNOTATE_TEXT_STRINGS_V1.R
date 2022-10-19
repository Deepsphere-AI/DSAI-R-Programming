
/*******************************************************************************************

File Name       :   CSLAB_NLP_FUNCTION_ANNOTATE_TEXT_STRINGS_V1
Purpose 	:   A Program for Annotating Text Strings using NLP in R
Author		:   Durga Prasad
Reviewer 	:   Jothi Periasamy
Date and Time	:   22/01/2019 15:44 hrs
Version		:   1.0	
Change History 	: 

____________________________________________________________________________________________

	Who				   When 			  Why
____________________________________________________________________________________________


	DP				22/01/2019		  Initital Release 

____________________________________________________________________________________________


/*******************************************************************************************
 	
## Program Description : A Program for Annotating Text Strings using NLP in R

## R Development Environment & Runtime - R Studio, Anaconda, Jupyter

vAR_CSLAB_s <- String("  First sentence.  Second sentence.  ")

vAR_CSLAB_sent_tokenizer <-function(s) {
    vAR_CSLAB_s <- as.String(s)
    vAR_CSLAB_m <- gregexpr("[^[:space:]][^.]*\\.", s)[[1L]]
    Span(vAR_CSLAB_m, vAR_CSLAB_m + attr(vAR_CSLAB_m, "match.length") - 1L)
}

## A simple sentence token annotator based on the sentence tokenizer.
vAR_CSLAB_sent_token_annotator <- Simple_Sent_Token_Annotator(vAR_CSLAB_sent_tokenizer)

## Annotate sentence tokens.
vAR_CSLAB_a1 <- annotate(vAR_CSLAB_s, vAR_CSLAB_sent_token_annotator)

vAR_CSLAB_a1

/*******************************************************************************************
Disclaimer.

      We are providing this code block strictly for learning and researching, this is not a 
production ready code. We have no liability on this particular code under any circumstances; 
users should use this code on 	their own risk. All software, hardware and othr products that 
are referenced in these materials belong to the respective vendor who developed or who owns 
this product.

/*******************************************************************************************
