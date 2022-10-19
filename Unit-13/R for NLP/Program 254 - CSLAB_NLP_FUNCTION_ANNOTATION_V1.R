
/*******************************************************************************************

File Name       :   CSLAB_NLP_FUNCTION_ANNOTATION_V1
Purpose 	:   A Program for Annotation Function using NLP in R
Author		:   Durga Prasad
Reviewer 	:   Jothi Periasamy
Date and Time	:   22/01/2019 15:05 hrs
Version		:   1.0	
Change History 	: 

____________________________________________________________________________________________

	Who				   When 			  Why
____________________________________________________________________________________________


	DP				22/01/2019		  Initital Release 

____________________________________________________________________________________________


/*******************************************************************************************
 	
## Program Description : A Program for Annotation Function using NLP in R

## R Development Environment & Runtime - R Studio, Anaconda, Jupyter

vAR_CSLAB_s <- String("  First sentence.  Second sentence.  ")

## Basic sentence and word token annotations for the text.
vAR_CSLAB_a1s <- Annotation(1 : 2,
                  rep.int("sentence", 2L),
                  c( 3L, 20L),
                  c(17L, 35L))

vAR_CSLAB_a1w <- Annotation(3 : 6,
                  rep.int("word", 4L),
                  c( 3L,  9L, 20L, 27L),
                  c( 7L, 16L, 25L, 34L))

## Use c() to combine these annotations:
vAR_CSLAB_a1 <- c(vAR_CSLAB_a1s, vAR_CSLAB_a1w)

## Subscripting via '[':
vAR_CSLAB_a1[3 : 4]

## Subscripting via '$':
vAR_CSLAB_a1$type

## Subsetting according to slot values, directly:
vAR_CSLAB_a1[vAR_CSLAB_a1$type == "word"]

## or using subset():
subset(vAR_CSLAB_a1, type == "word")

/*******************************************************************************************
Disclaimer.

      We are providing this code block strictly for learning and researching, this is not a 
production ready code. We have no liability on this particular code under any circumstances; 
users should use this code on 	their own risk. All software, hardware and othr products that 
are referenced in these materials belong to the respective vendor who developed or who owns 
this product.

/*******************************************************************************************
