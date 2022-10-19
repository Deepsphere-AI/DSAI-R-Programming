
/*******************************************************************************************

File Name       :   CSLAB_VENN_DIAGRAM_V1
Purpose 	:   A Program for Venn Diagram in R
Author		:   Durga Prasad
Reviewer 	:   Jothi Periasamy
Date and Time	:   16/01/2019 01:23 hrs
Version		:   1.0	
Change History 	: 

____________________________________________________________________________________________

	Who				   When 			  Why
____________________________________________________________________________________________


	DP				16/01/2019		    Initital Release 

____________________________________________________________________________________________


/*******************************************************************************************

## Program Description : A Program for Venn Diagram in R  

## R Development Environment & Runtime - R Studio, Anaconda, Jupyter

source("http://faculty.ucr.edu/~tgirke/Documents/R_BioCond/My_R_Scripts/overLapper.R")

vAR_CSLAB_LIST <- list(A=sample(letters, 18), B=sample(letters, 16), C=sample(letters, 20), D=sample(letters, 22), E=sample(letters, 18))

vAR_CSLAB_OLLIST <- overLapper(setlist=vAR_CSLAB_LIST, sep="_", type="vennsets")

vAR_CSLAB_COUNTS <- sapply(vAR_CSLAB_OLLIST$Venn_List, length)

vennPlot(counts=counts, ccol=c(rep(1,30),2), lcex=1.5, ccex=c(rep(1.5,5), rep(0.6,25),1.5))

/*******************************************************************************************
  Disclaimer.

      We are providing this code block strictly for learning and researching, this is not a 
production ready code. We have no liability on this particular code under any circumstances; 
users should use this code on their own risk. All software, hardware and othr products that 
are referenced in these materials belong to the respective vendor who developed or who owns 
this product.

/*******************************************************************************************