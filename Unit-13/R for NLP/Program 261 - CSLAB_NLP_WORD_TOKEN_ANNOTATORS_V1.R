
/*******************************************************************************************

File Name       :   CSLAB_NLP_WORD_TOKEN_ANNOTATORS_V1
Purpose 	:   A Program for Word Token Annotators using NLP in R
Author		:   Durga Prasad
Reviewer 	:   Jothi Periasamy
Date and Time	:   22/01/2019 16:44 hrs
Version		:   1.0	
Change History 	: 

____________________________________________________________________________________________

	Who				   When 			  Why
____________________________________________________________________________________________


	DP				22/01/2019		  Initital Release 

____________________________________________________________________________________________


/*******************************************************************************************
 	
## Program Description : A Program for Word Token Annotators using NLP in R

## R Development Environment & Runtime - R Studio, Anaconda, Jupyter

require("NLP")

## Some text.
vAR_CSLAB_s <- paste(c("Pierre Vinken, 61 years old, will join the board as a ",
             "nonexecutive director Nov. 29.\n",
             "Mr. Vinken is chairman of Elsevier N.V., ",
             "the Dutch publishing group."),
           collapse = "")

vAR_CSLAB_s <- as.String(vAR_CSLAB_s)

## Need sentence token annotations.
vAR_CSLAB_sent_token_annotator <- Maxent_Sent_Token_Annotator()
vAR_CSLAB_a1 <- annotate(vAR_CSLAB_s, vAR_CSLAB_sent_token_annotator)

vAR_CSLAB_word_token_annotator <- Maxent_Word_Token_Annotator()
vAR_CSLAB_word_token_annotator
vAR_CSLAB_a2 <- annotate(vAR_CSLAB_s, vAR_CSLAB_word_token_annotator, vAR_CSLAB_a1)
vAR_CSLAB_a2

## Variant with word token probabilities as features.
head(annotate(vAR_CSLAB_s, Maxent_Word_Token_Annotator(probs = TRUE), vAR_CSLAB_a1))

## Can also perform sentence and word token annotations in a pipeline:
vAR_CSLAB_a <- annotate(vAR_CSLAB_s, list(vAR_CSLAB_sent_token_annotator, vAR_CSLAB_word_token_annotator))

/*******************************************************************************************
Disclaimer.

      We are providing this code block strictly for learning and researching, this is not a 
production ready code. We have no liability on this particular code under any circumstances; 
users should use this code on 	their own risk. All software, hardware and othr products that 
are referenced in these materials belong to the respective vendor who developed or who owns 
this product.

/*******************************************************************************************
