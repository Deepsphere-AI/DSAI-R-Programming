
/*******************************************************************************************

File Name       :   CSLAB_GGPLOT2_FUNCTION_V1
Purpose 	:   A Program for ggplot function in R
Author		:   Durga Prasad
Reviewer 	:   Jothi Periasamy
Date and Time	:   15/01/2019 19:48 hrs
Version		:   1.0	
Change History 	: 

____________________________________________________________________________________________

	Who				   When 			  Why
____________________________________________________________________________________________


	DP				15/01/2019		  Initital Release 

____________________________________________________________________________________________


/*******************************************************************************************

## Program Description : A Program for ggplot function in R  

## R Development Environment & Runtime - R Studio, Anaconda, Jupyter Notebook 

vAR_CSLAB_df <- data.frame(gp = factor(rep(letters[1:3], each = 10)),y = rnorm(30))

vAR_CSLAB_ds <- plyr::ddply(vAR_CSLAB_df, "gp", plyr::summarise, mean = mean(y), sd = sd(y))

ggplot(vAR_CSLAB_df, aes(gp, y)) + geom_point() + geom_point(data = vAR_CSLAB_ds, aes(y = mean), colour = 'red', size = 3)

ggplot(vAR_CSLAB_df) + geom_point(aes(gp, y)) + geom_point(data = vAR_CSLAB_ds, aes(gp, mean), colour = 'red', size = 3)

ggplot() + geom_point(data = vAR_CSLAB_df, aes(gp, y)) + geom_point(data = vAR_CSLAB_ds, aes(gp, mean), colour = 'red', size = 3) + geom_errorbar(data = vAR_CSLAB_ds, aes(gp, mean, ymin = mean - sd, ymax = mean + sd),colour = 'red',width = 0.4)
    
/*******************************************************************************************
Disclaimer.

      We are providing this code block strictly for learning and researching, this is not a 
production ready code. We have no liability on this particular code under any circumstances; 
users should use this code on their own risk. All software, hardware and othr products that 
are referenced in these materials belong to the respective vendor who developed or who owns 
this product.

/*******************************************************************************************
