
/*******************************************************************************************

File Name       :   CSLAB_SUBSETTING_V1
Purpose 	:   A Program for Subsetting in R
Author		:   Durga Prasad
Reviewer 	:   Jothi Periasamy
Date and Time	:   14/01/2019 15:29 hrs
Version		:   1.0	
Change History 	: 

____________________________________________________________________________________________

	Who				   When 			  Why
____________________________________________________________________________________________


	DP				14/01/2019		  Initital Release 

____________________________________________________________________________________________


/*******************************************************************************************
   
## Program Description : A Program for Subsetting in R

## R Development Environment & Runtime - R Studio, Anaconda, Jupyter Notebook

vAR_CSLAB_numvec = c(2,5,8,9,0,6,7,8,4,5,7,11)

vAR_CSLAB_charvec = c("David","James","Sara","Tim","Pierre",
            "Janice","Sara","Priya","Keith","Mark",
            "Apple","Sara")

vAR_CSLAB_gender = c("M","M","F","M","M","M","F","F","F","M","M","F")

vAR_CSLAB_state = c("CO","KS","CA","IA","MO","FL","CA","CO","FL","CA","WY","AZ")

subset(vAR_CSLAB_numvec, vAR_CSLAB_numvec > 7)
  
subset(vAR_CSLAB_numvec, vAR_CSLAB_numvec < 9 & vAR_CSLAB_numvec > 4)

subset(vAR_CSLAB_numvec, vAR_CSLAB_numvec < 3 | vAR_CSLAB_numvec > 9)

vAR_CSLAB_df = data.frame(vAR_CSLAB1=c(vAR_CSLAB_numvec), vAR_CSLAB2=c(vAR_CSLAB_charvec),
                gender=c(vAR_CSLAB_gender), state=c(vAR_CSLAB_state))

subset(vAR_CSLAB_df, vAR_CSLAB1 < 5)

subset(vAR_CSLAB_df, vAR_CSLAB2 == "Sara")


/*******************************************************************************************
Disclaimer.

      We are providing this code block strictly for learning and researching, this is not a 
production ready code. We have no liability on this particular code under any circumstances; 
users should use this code on their own risk. All software, hardware and othr products that 
are referenced in these materials belong to the respective vendor who developed or who owns 
this product.

/*******************************************************************************************
