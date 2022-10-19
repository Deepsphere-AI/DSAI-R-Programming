
/*******************************************************************************************

File Name       :   CSLAB_AXIS_LEGENDS_IN_R_V1
Purpose 	:   A Program for Axis & Legends in R
Author		:   Durga Prasad
Reviewer 	:   Jothi Periasamy
Date and Time	:   15/01/2019 22:20 hrs
Version		:   1.0	
Change History 	: 

____________________________________________________________________________________________

	Who				   When 			  Why
____________________________________________________________________________________________


	DP				15/01/2019		  Initital Release 

____________________________________________________________________________________________

/*******************************************************************************************

## Program Description : A Program for Axis & Legends in R  

## R Development Environment & Runtime - R Studio, Anaconda, Jupyter Notebook 

install.packages("ggvis")

library("ggvis")

mtcars %>% ggvis(~wt, ~mpg) %>% layer_points()

mtcars %>% ggvis(~wt, ~mpg) %>% layer_points() %>%

add_axis("x", title = "Weight") %>%

add_axis("y", title = "Miles per gallon")

mtcars2 <- mtcars %>% dplyr::mutate(cyl = ordered(mtcars$cyl))

mtcars2 %>% ggvis(~mpg, ~wt, size = ~cyl, fill = ~cyl) %>% layer_points()

/*******************************************************************************************
Disclaimer.

      We are providing this code block strictly for learning and researching, this is not a 
production ready code. We have no liability on this particular code under any circumstances; 
users should use this code on their own risk. All software, hardware and othr products that 
are referenced in these materials belong to the respective vendor who developed or who owns 
this product.

/*******************************************************************************************

