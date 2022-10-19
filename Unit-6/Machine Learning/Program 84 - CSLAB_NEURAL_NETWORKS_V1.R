
/*******************************************************************************************

File Name       :   CSLAB_NEURAL_NETWORKS_V1
Purpose 	:   A Program for Neural Networks in R
Author		:   Durga Prasad
Reviewer 	:   Jothi Periasamy
Date and Time	:   15/01/2019 19:37 hrs
Version		:   1.0	
Change History 	: 

____________________________________________________________________________________________

	Who				   When 			  Why
____________________________________________________________________________________________


	DP				15/01/2019		    Initital Release 

____________________________________________________________________________________________


/*******************************************************************************************
   
## Program Description : A Program for Neural Networks in R  

## R Development Environment & Runtime - R Studio, Anaconda, Jupyter Notebook 

install.packages('neuralnet')

library("neuralnet")

vAR_CSLAB_traininginput <-  as.data.frame(runif(50, min=0, max=100))

vAR_CSLAB_trainingoutput <- sqrt(vAR_CSLAB_traininginput)

vAR_CSLAB_trainingdata <- cbind(vAR_CSLAB_traininginput,vAR_CSLAB_trainingoutput)

colnames(vAR_CSLAB_trainingdata) <- c("Input","Output")

#Train the neural network

vAR_CSLAB_net.sqrt <- neuralnet(Output~Input,vAR_CSLAB_trainingdata, hidden=10, threshold=0.01)

print(vAR_CSLAB_net.sqrt)

#Plot the neural network

plot(vAR_CSLAB_net.sqrt)

#Test the neural network on some training data

vAR_CSLAB_testdata <- as.data.frame((1:10)^2) #Generate some squared numbers

vAR_CSLAB_net.results <- compute(vAR_CSLAB_net.sqrt, vAR_CSLAB_testdata) #Run them through the neural network

ls(vAR_CSLAB_net.results)

print(vAR_CSLAB_net.results$net.result)

vAR_CSLAB_cleanoutput <- cbind(vAR_CSLAB_testdata,sqrt(vAR_CSLAB_testdata),
                     as.data.frame(vAR_CSLAB_net.results$net.result))

colnames(vAR_CSLAB_cleanoutput) <- c("Input","Expected Output","Neural Net Output")

print(vAR_CSLAB_cleanoutput)



/*******************************************************************************************
  Disclaimer.

      We are providing this code block strictly for learning and researching, this is not a 
production ready code. We have no liability on this particular code under any circumstances; 
users should use this code on their own risk. All software, hardware and othr products that 
are referenced in these materials belong to the respective vendor who developed or who owns 
this product.

/*******************************************************************************************