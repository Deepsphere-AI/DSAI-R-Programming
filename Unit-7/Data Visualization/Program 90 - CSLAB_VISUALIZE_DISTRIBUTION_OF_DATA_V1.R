
/*******************************************************************************************

File Name       :   CSLAB_VISUALIZE_DISTRIBUTION_OF_DATA_V1
Purpose 	:   A Program for Visualizing Distributions of Data in R
Author		:   Durga Prasad
Reviewer 	:   Jothi Periasamy
Date and Time	:   15/01/2019 21:04 hrs
Version		:   1.0	
Change History 	: 

____________________________________________________________________________________________

	Who				   When 			  Why
____________________________________________________________________________________________


	DP				15/01/2019		  Initital Release 

____________________________________________________________________________________________


/*******************************************************************************************

## Program Description : A Program for Visualizing Distributions of Data in R  

## R Development Environment & Runtime - R Studio, Anaconda, Jupyter Notebook 

library(ggplot2)

install.packages("ggpubr")

library("ggpubr")

theme_set(theme_pubr())

ggplot(diamonds, aes(cut)) + geom_bar(fill = "#0073C2FF") + theme_pubclean()

library(dplyr)

vAR_CSLAB_df <- diamonds %>%

group_by(cut) %>%

summarise(counts = n())

vAR_CSLAB_df

ggplot(vAR_CSLAB_df, aes(x = cut, y = counts)) + geom_bar(fill = "#0073C2FF", stat = "identity") + geom_text(aes(label = counts), vjust = -0.3) + theme_pubclean()


/*******************************************************************************************
Disclaimer.

      We are providing this code block strictly for learning and researching, this is not a 
production ready code. We have no liability on this particular code under any circumstances; 
users should use this code on their own risk. All software, hardware and othr products that 
are referenced in these materials belong to the respective vendor who developed or who owns 
this product.

/*******************************************************************************************
