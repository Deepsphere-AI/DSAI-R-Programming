
/*******************************************************************************************

File Name       :   CSLAB_STATISTICAL_MODELS_V1
Purpose 	:   A Program for Statistical Models in R
Author		:   Durga Prasad
Reviewer 	:   Jothi Periasamy
Date and Time	:   14/01/2019 21:49 hrs
Version		:   1.0	
Change History 	: 

____________________________________________________________________________________________

	Who				   When 			  Why
____________________________________________________________________________________________


	DP				14/01/2019		  Initital Release 

____________________________________________________________________________________________


/*******************************************************************************************
    
## Program Description : A Program for Statistical Models in R

## R Development Environment & Runtime - R Studio, Anaconda, Jupyter Notebook

data(trees)

head(trees)

str(trees)

#ggpairs(data=trees, columns=1:3, title="trees data")

vAR_CSLAB_fit_1  <- lm(Volume ~ Girth, data = trees)

summary(vAR_CSLAB_fit_1)

ggplot(data=trees, aes(vAR_CSLAB_fit_1$residuals)) + geom_histogram(binwidth = 1, color = "black", fill = "purple4") +theme(panel.background = element_rect(fill = "white"),axis.line.x=element_line(),axis.line.y=element_line()) +ggtitle("Histogram for Model Residuals") 

ggplot(data = trees, aes(x = Girth, y = Volume)) + geom_point() + stat_smooth(method = "lm", col = "dodgerblue3") +theme(panel.background = element_rect(fill = "white"), axis.line.x=element_line(),axis.line.y=element_line()) + ggtitle("Linear Model Fitted to Data")

predict(vAR_CSLAB_fit_1, data.frame(Girth = 18.2))

vAR_CSLAB_fit_2 <- lm(Volume ~ Girth + Height, data = trees)

vAR_CSLAB_Girth <- seq(9,21, by=0.5) ## make a girth vector


vAR_CSLAB_Height <- seq(60,90, by=0.5) ## make a height vector

vAR_CSLAB_pred_grid <- expand.grid(Girth = Girth, Height = vAR_CSLAB_Height)  ## make a grid using the vectors

vAR_CSLAB_pred_grid$Volume2 <-predict(vAR_CSLAB_fit_2, new = vAR_CSLAB_pred_grid)


/*******************************************************************************************
  
Disclaimer.

      We are providing this code block strictly for learning and researching, this is not a 
production ready code. We have no liability on this particular code under any circumstances; 
users should use this code on their own risk. All software, hardware and other products that 
are referenced in these materials belong to the respective vendor who developed or who owns 
this product.

/*******************************************************************************************

