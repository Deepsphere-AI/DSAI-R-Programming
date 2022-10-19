

/*******************************************************************************************

File Name       :   CSLAB_CREDIT_SCORE_PREDICTION
Purpose 	:   A Program for Credit Score Prediction Using HADOOP as Datasource in R
Author		:   Durga Prasad
Reviewer 	:   Jothi Periasamy
Date and Time	:   16/01/2019 11:22 hrs
Version		:   1.0	
Change History 	: 

____________________________________________________________________________________________

	Who				 When 			       Why
____________________________________________________________________________________________


	DP			      16/01/2019		  Initital Release 

____________________________________________________________________________________________


/*******************************************************************************************

## Program Description : A Program for Credit Score Prediction Using HADOOP as Datasource in R  

## R Development Environment & Runtime - R Studio, Anaconda, Jupyter

#install.packages("RHive")

#library("RHive")

#rhive.init(hive = "/usr/lib/hive", hadoop="/usr/lib/hadoop", verbose= FALSE)

#vAR_CSLAB_a <- rhive.query ("select * from test_Seq_Credit")

#Sys.setenv(HIVE_HOME="/usr/lib/hive") 

#Sys.setenv(HADOOP_HOME="/usr/lib/hadoop") 

#rhive.env(ALL=TRUE) 

#rhive.init() 

#rhive.connect(hiveServer2=TRUE)

#rhive.query("select * from test_Seq_Credit")

#set.seed(1234567890)

#library("neuralnet")

#vAR_CSLAB_mydata <- read.table("/home/cloudera/Creditset.txt", header=TRUE, sep="\t")

#head(vAR_CSLAB_mydata)

#vAR_CSLAB_trainset <- vAR_CSLAB_mydata[1:6, ]

#vAR_CSLAB_temp_test <- subset(vAR_CSLAB_trainset, select = c("LTI", "Age"))

#vAR_CSLAB_creditnet.results <- compute(vAR_CSLAB_creditnet, vAR_CSLAB_temp_test)

#head(vAR_CSLAB_testset)

#vAR_CSLAB_results <- data.frame(actual = vAR_CSLAB_trainset$default10yr, prediction = vAR_CSLAB_creditnet.results$net.result)

#vAR_CSLAB_results[1:6, ]

#write.table(results,"home/cloudera/Prediction_Data.txt", sep ="\t")

#vAR_CSLAB_creditnet <- neuralnet(default10yr ~ LTI + Age, vAR_CSLAB_trainset, hidden = 4, lifesign = "minimal",linear.output = FALSE, threshold = 0.1)

#plot(vAR_CSLAB_creditnet, rep = "best")



/*******************************************************************************************
Disclaimer.

      We are providing this code block strictly for learning and researching, this is not a 
production ready code. We have no liability on this particular code under any circumstances; 
users should use this code on their own risk. All software, hardware and othr products that 
are referenced in these materials belong to the respective vendor who developed or who owns 
this product.

/*******************************************************************************************

