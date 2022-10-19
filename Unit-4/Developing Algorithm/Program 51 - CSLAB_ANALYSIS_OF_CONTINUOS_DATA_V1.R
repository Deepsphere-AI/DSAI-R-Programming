
/*******************************************************************************************

File Name       :   CSLAB_ANALYSIS_OF_CONTINUOS_DATA_V1
Purpose 	:   A Program for Analysis of Continuous Data  in R
Author		:   Durga Prasad
Reviewer 	:   Jothi Periasamy
Date and Time	:   14/01/2019 23:49 hrs
Version		:   1.0	
Change History 	: 

____________________________________________________________________________________________

	Who				   When 			  Why
____________________________________________________________________________________________


	DP				14/01/2019		  Initital Release 

____________________________________________________________________________________________


/*******************************************************************************************

## Program Description : A Program for Analysis of Continuous Data in R

## R Development Environment & Runtime - R Studio, Anaconda, Jupyter Notebook 

head(faithful)

vAR_CSLAB_duration = faithful$eruptions      # the eruption durations 

vAR_CSLAB_waiting = faithful$waiting         # the waiting interval 

head(cbind(vAR_CSLAB_duration,vAR_CSLAB_waiting)) 

plot(vAR_CSLAB_duration, vAR_CSLAB_waiting, xlab="Eruption duration",  ylab="Time waited")

abline(lm(vAR_CSLAB_waiting ~ vAR_CSLAB_duration))


/*******************************************************************************************
  
Disclaimer.

      We are providing this code block strictly for learning and researching, this is not a 
production ready code. We have no liability on this particular code under any circumstances; 
users should use this code on their own risk. All software, hardware and other products that 
are referenced in these materials belong to the respective vendor who developed or who owns 
this product.

/*******************************************************************************************

