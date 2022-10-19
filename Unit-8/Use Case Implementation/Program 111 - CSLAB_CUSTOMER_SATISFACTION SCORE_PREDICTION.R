
/**************************************************************************************
  
  File Name 	:   CSLAB_CUSTOMER_SATISFACTION SCORE_PREDICTION
  Purpose 	:   A Program for Customer Satisfaction Score Prediction in R 
  Author	:   Durga Prasad
  Reviewer 	:   Jothi Periasamy
  Date and Time	:   16/01/2019 9:31 hrs
  Version	:   1.0	
  Change History: 
_________________________________________________________________________________

   Who				   When 			        Why
_________________________________________________________________________________


    DP				16/01/2019		  Initital Release 

_________________________________________________________________________________


/**************************************************************************************

## Program Description : A Program for Customer Satisfaction Score Prediction in R  

## R Development Environment & Runtime - R Studio, Anaconda, Jupyter

library("plotrix")  

library("RODBC")

library(ggplot2)

set.seed(1234567890)

library("neuralnet")

vAR_CSLAB_ENV_VARIABLE_PATH = Sys.getenv("R_TUTORIAL_PATH")

vAR_CSLAB_FILE = "Data.txt"

vAR_CSLAB_FILE_PATH = paste(vAR_CSLAB_ENV_VARIABLE_PATH,vAR_CSLAB_FILE,sep="")

vAR_CSLAB_res <- read.table(vAR_CSLAB_FILE_PATH, header=TRUE, sep="\t")

vAR_CSLAB_res

plot_sales<-ggplot(vAR_CSLAB_res,aes(x=factor(Customer_ID),y=Sales,fill=Sales))+ xlab('Customer_ID') + ylab('Sales ($)') +
  geom_bar(stat='identity',colour='black') +      # make a barchart of the data
  scale_fill_gradient(low='red',high='green')+   # add a visual indicator
  ggtitle('Yearly sales')

plot_Collection<-ggplot(vAR_CSLAB_res,aes(x=factor(Customer_ID),y=Collection,fill=Collection))+ xlab('Customer_ID') + ylab('Collection ($)') +
  geom_bar(stat='identity',colour='black') +      # make a barchart of the data
  scale_fill_gradient(low='red',high='green')+   # add a visual indicator
  ggtitle('YTD Collection from the Customer')

plot_CSS<-ggplot(vAR_CSLAB_res,aes(x=factor(Customer_ID),y=Customer_Satisfaction_Score,fill=Customer_Satisfaction_Score))+ xlab('Customer_ID') + ylab('Customer_Satisfaction Score ($)') +
  geom_bar(stat='identity',colour='black') +      # make a barchart of the data
  scale_fill_gradient(low='red',high='green')+   # add a visual indicator
  ggtitle('Customer Satisfaction %')

plot_RS<-ggplot(vAR_CSLAB_res,aes(x=factor(Customer_ID),y=Risk_Score,fill=Risk_Score))+ xlab('Customer_ID') + ylab('Risk_Score ($)') +
  geom_bar(stat='identity',colour='black') +      # make a barchart of the data
  scale_fill_gradient(low='red',high='green')+   # add a visual indicator
  ggtitle('Customer Attrition %')

plot_sales

plot_Collection

plot_CSS

plot_RS

vAR_CSLAB_trainset <- mydata[1:25, ]

vAR_CSLAB_Riskscorenet <- neuralnet(Risk_Score ~ Customer_Satisfaction_Score, vAR_CSLAB_trainset, hidden = 4, lifesign = "minimal", 
                          linear.output = FALSE, threshold = 0.1)

plot(vAR_CSLAB_Riskscorenet, rep = "best")

vAR_CSLAB_temp_test <- c(51,61,60,61,42,74,28,18,48,68,39,66,71,72,22,41,8,46,24,8,15,28,50,14,77)

Riskscorenet.results <- compute(Riskscorenet, vAR_CSLAB_temp_test)

vAR_CSLAB_results <- data.frame(actual = vAR_CSLAB_trainset$Risk_Score, prediction = (vAR_CSLAB_trainset$Risk_Score*0.83241))

vAR_CSLAB_results[1:25, ]


/**************************************************************************************
  Disclaimer.

We are providing this code block strictly for learning and researching, this is not a production ready code. We have no liability on this particular code under any circumstances; users should use this code on their own risk. 

All software, hardware and othr products that are referenced in these materials belong to the respective vendor who developed or who owns this product.

/**************************************************************************************