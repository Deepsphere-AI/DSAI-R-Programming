  
/*******************************************************************************************

File Name       :   CSLAB_BEST_SUBSET_SELECTION_V1
Purpose 	:   A Program for Subset Selection in R
Author		:   Durga Prasad
Reviewer 	:   Jothi Periasamy
Date and Time	:   15/01/2019 16:27 hrs
Version		:   1.0	
Change History 	: 

____________________________________________________________________________________________

	Who				   When 			  Why
____________________________________________________________________________________________


	DP				15/01/2019		  Initital Release 

____________________________________________________________________________________________


/*******************************************************************************************

## Program Description : A Program for Subset Selection in R

## R Development Environment & Runtime - R Studio, Anaconda, Jupyter Notebook

library(ISLR)
library(dplyr)
head(Hitters)

# Print the dimensions of the original Hitters data (322 rows x 20 columns)
dim(Hitters)

# Drop any rows the contain missing values
vAR_CSLAB_Hitters = Hitters %>%
na.omit()

# Print the dimensions of the modified Hitters data (263 rows x 20 columns)
dim(Hitters)

install.packages("leaps")

library(leaps)

vAR_CSLAB_regfit_full = regsubsets(Salary~., data = vAR_CSLAB_Hitters)

summary(vAR_CSLAB_regfit_full)

vAR_CSLAB_regfit_full = regsubsets(Salary~., data = vAR_CSLAB_Hitters, nvmax = 19)

vAR_CSLAB_reg_summary = summary(vAR_CSLAB_regfit_full)

# Set up a 2x2 grid so we can look at 4 plots at once
par(mfrow = c(2,2))

plot(reg_summary$rss, xlab = "Number of Variables", ylab = "RSS", type = "l")

plot(reg_summary$adjr2, xlab = "Number of Variables", ylab = "Adjusted RSq", type = "l")

# We will now plot a red dot to indicate the model with the largest adjusted R^2 statistic.
# The which.max() function can be used to identify the location of the maximum point of a vector
vAR_CSLAB_adj_r2_max = which.max(vAR_CSLAB_reg_summary$adjr2) # 11

# The points() command works like the plot() command, except that it puts points 
# on a plot that has already been created instead of creating a new plot
points(vAR_CSLAB_adj_r2_max, vAR_CSLAB_reg_summary$adjr2[adj_r2_max], col ="red", cex = 2, pch = 20)

# We'll do the same for C_p and BIC, this time looking for the models with the SMALLEST statistic
plot(vAR_CSLAB_reg_summary$cp, xlab = "Number of Variables", ylab = "Cp", type = "l")

vAR_CSLAB_cp_min = which.min(vAR_CSLAB_reg_summary$cp) # 10

points(vAR_CSLAB_cp_min, vAR_CSLAB_reg_summary$cp[cp_min], col = "red", cex = 2, pch = 20)

plot(vAR_CSLAB_reg_summary$bic, xlab = "Number of Variables", ylab = "BIC", type = "l")

vAR_CSLAB_bic_min = which.min(vAR_CSLAB_reg_summary$bic) # 6

points(vAR_CSLAB_bic_min, vAR_CSLAB_reg_summary$bic[vAR_CSLAB_bic_min], col = "red", cex = 2, pch = 20)

/*******************************************************************************************
  
Disclaimer.

      We are providing this code block strictly for learning and researching, this is not a 
production ready code. We have no liability on this particular code under any circumstances; 
users should use this code on their own risk. All software, hardware and other products that 
are referenced in these materials belong to the respective vendor who developed or who owns 
this product.

/*******************************************************************************************

