
/*******************************************************************************************

File Name       :   CSLAB_TENSORFLOW_DECISION_TREE_V1
Purpose 	:   A Program for Decision Tree in R
Author		:   Durga Prasad
Reviewer 	:   Jothi Periasamy
Date and Time	:   21/01/2019 9:32 hrs
Version		:   1.0	
Change History 	: 

____________________________________________________________________________________________

	Who				   When 			  Why
____________________________________________________________________________________________


	DP				21/01/2019		  Initital Release 

____________________________________________________________________________________________


/*******************************************************************************************
 	
## Program Description : A Program for Logistic Regression in R

## R Development Environment & Runtime - R Studio, Anaconda, Jupyter

install.packages("caret")
library(caret)
#library(rpart.plot)

vAR_CSLAB_data_url <- c("https://archive.ics.uci.edu/ml/machine-learning-databases/car/car.data")
download.file(url = vAR_CSLAB_data_url, destfile = "car.data")
 
vAR_CSLAB_car_df <- read.csv("car.data", sep = ',', header = FALSE)
#head(vAR_CSLAB_car_df)

str(vAR_CSLAB_car_df)

set.seed(3033)
vAR_CSLAB_intrain <- createDataPartition(y = vAR_CSLAB_car_df$V7, p= 0.7, list = FALSE)

vAR_CSLAB_training <- vAR_CSLAB_car_df[vAR_CSLAB_intrain,]

vAR_CSLAB_testing <- vAR_CSLAB_car_df[-vAR_CSLAB_intrain,]

dim(vAR_CSLAB_training); dim(vAR_CSLAB_testing)

vAR_CSLAB_trctrl <- trainControl(method = "repeatedcv", number = 10, repeats = 3)

set.seed(3333)

vAR_CSLAB_dtree_fit <- train(V7 ~., data = vAR_CSLAB_training, method = "rpart",parms = list(split = "information"),trControl=trctrl,tuneLength = 10)

vAR_CSLAB_dtree_fit

#prp(dtree_fit$finalModel, box.palette = "Reds", tweak = 1.2)

vAR_CSLAB_testing[1,]

predict(vAR_CSLAB_dtree_fit, newdata = vAR_CSLAB_testing[1,])

/*******************************************************************************************
Disclaimer.

      We are providing this code block strictly for learning and researching, this is not a 
production ready code. We have no liability on this particular code under any circumstances; 
users should use this code on 	their own risk. All software, hardware and othr products that 
are referenced in these materials belong to the respective vendor who developed or who owns 
this product.

/*******************************************************************************************
