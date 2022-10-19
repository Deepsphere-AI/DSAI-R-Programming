
/*******************************************************************************************

File Name       :   CSLAB_SAVING_GRAPHS_V1
Purpose 	:   A Program for Saving Graphs in R
Author		:   Durga Prasad
Reviewer 	:   Jothi Periasamy
Date and Time	:   15/01/2019 21:23 hrs
Version		:   1.0	
Change History 	: 3

____________________________________________________________________________________________

	Who				   When 			  Why
____________________________________________________________________________________________


	DP				15/01/2019		  Initital Release 

____________________________________________________________________________________________


/*******************************************************************************************

## Program Description : A Program for Saving Graphs in R  

## R Development Environment & Runtime - R Studio, Anaconda, Jupyter Notebook 

names = LETTERS[1:26] ## Gives a sequence of the letters of the alphabet

vAR_CSLAB_beta1 = rnorm(26, 5, 2) ## A vector of slopes (one for each letter)

vAR_CSLAB_beta0 = 10 ## A common intercept

for(i in 1:26){
  
vAR_CSLAB_X = rnorm(500, 105, 10)
  
vAR_CSLAB_Y = vAR_CSLAB_beta0 + vAR_CSLAB_beta1[i]*vAR_CSLAB_X + 15*rnorm(500)
  
vAR_CSLAB_mypath <- file.path("C:","R","SAVEHERE",paste("myplot_", names[i], ".jpg", sep = ""))
  
#jpg(file=mypath)
  
vAR_CSLAB_mytitle = paste("my title is", names[i])
  
plot(VAR_CSLAB_X ,VAR_CSLAB_Y , main = vAR_CSLAB_mytitle)
  
dev.off()

}       

/*******************************************************************************************
Disclaimer.

      We are providing this code block strictly for learning and researching, this is not a 
production ready code. We have no liability on this particular code under any circumstances; 
users should use this code on their own risk. All software, hardware and othr products that 
are referenced in these materials belong to the respective vendor who developed or who owns 
this product.

/*******************************************************************************************
