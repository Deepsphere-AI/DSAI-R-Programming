
/*******************************************************************************************

File Name       :   CSLAB_FACETS_IN_GGPLOT2_V1
Purpose 	:   A Program for ggplot2 facets in R
Author		:   Durga Prasad
Reviewer 	:   Jothi Periasamy
Date and Time	:   15/01/2019 20:18 hrs
Version		:   1.0	
Change History 	: 

____________________________________________________________________________________________

	Who				   When 			  Why
____________________________________________________________________________________________


	DP				15/01/2019		  Initital Release 

____________________________________________________________________________________________


/*******************************************************************************************

## Program Description : A Program for ggplot2 facets in R  

## R Development Environment & Runtime - R Studio, Anaconda, Jupyter Notebook 

library(reshape2)
  
tips

library(ggplot2)
 
vAR_CSLAB_X <- ggplot(tips, aes(x=total_bill, y=tip/total_bill)) + geom_point(shape=1)

vAR_CSLAB_X

# Divide by levels of "sex", in the vertical direction
   
vAR_CSLAB_X + facet_grid(sex ~ .)

# Divide by levels of "sex", in the horizontal direction
  
vAR_CSLAB_X + facet_grid(. ~ sex)

# Divide with "sex" vertical, "day" horizontal

vAR_CSLAB_X + facet_grid(sex ~ day)      


/*******************************************************************************************
Disclaimer.

      We are providing this code block strictly for learning and researching, this is not a 
production ready code. We have no liability on this particular code under any circumstances; 
users should use this code on their own risk. All software, hardware and othr products that 
are referenced in these materials belong to the respective vendor who developed or who owns 
this product.

/*******************************************************************************************
