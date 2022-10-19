
/*******************************************************************************************

File Name       :   CSLAB_ANALYSIS_OF_CATEGORICAL_DATA_V1
Purpose 	:   A Program for Analysis of Categorical Data in R
Author		:   Durga Prasad
Reviewer 	:   Jothi Periasamy
Date and Time	:   15/01/2019 9:54 hrs
Version		:   1.0	
Change History 	: 

____________________________________________________________________________________________

	Who				   When 			  Why
____________________________________________________________________________________________


	DP				15/01/2019		  Initital Release 

____________________________________________________________________________________________


/*******************************************************************************************

## Program Description : A Program for Analysis of Categorical Data in R

## R Development Environment & Runtime - R Studio, Anaconda, Jupyter Notebook 

vAR_CSLAB_afterlife <- matrix(c(435,147,375,134),nrow=2,byrow=TRUE)

vAR_CSLAB_afterlife

dimnames(vAR_CSLAB_afterlife) <- list(c("Female","Male"),c("Yes","No"))

vAR_CSLAB_afterlife

names(dimnames(vAR_CSLAB_afterlife)) <- c("Gender","Believer")

vAR_CSLAB_afterlife

vAR_CSLAB_tot <- sum(vAR_CSLAB_afterlife)

vAR_CSLAB_tot

vAR_CSLAB_afterlife/vAR_CSLAB_tot

vAR_CSLAB_rowtot <- apply(vAR_CSLAB_afterlife,1,sum)

vAR_CSLAB_coltot <- apply(vAR_CSLAB_afterlife,2,sum)

vAR_CSLAB_rowtot

vAR_CSLAB_rowpct <- sweep(vAR_CSLAB_afterlife,1,vAR_CSLAB_rowtot,"/")

vAR_CSLAB_rowpct

vAR_CSLAB_Gender <- c("Female","Female","Male","Male")

vAR_CSLAB_Believer <- c("Yes","No","Yes","No")

vAR_CSLAB_Count <- c(435,147,375,134)

vAR_CSLAB_afterlife <- data.frame(vAR_CSLAB_Gender,vAR_CSLAB_Believer,vAR_CSLAB_Count)

vAR_CSLAB_afterlife

vAR_CSLAB_beliefs <- tapply(vAR_CSLAB_Count,list(vAR_CSLAB_Gender,vAR_CSLAB_Believer),c)

vAR_CSLAB_beliefs

names(dimnames(vAR_CSLAB_beliefs)) <- c("Gender","Believer")

vAR_CSLAB_beliefs

vAR_CSLAB_beliefs <- vAR_CSLAB_beliefs[,c(2,1)] # reverse the columns?

vAR_CSLAB_beliefs

/*******************************************************************************************
  
Disclaimer.

      We are providing this code block strictly for learning and researching, this is not a 
production ready code. We have no liability on this particular code under any circumstances; 
users should use this code on their own risk. All software, hardware and other products that 
are referenced in these materials belong to the respective vendor who developed or who owns 
this product.

/*******************************************************************************************

