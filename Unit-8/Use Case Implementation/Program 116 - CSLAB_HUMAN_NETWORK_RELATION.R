
*******************************************************************************************

File Name       :   CSLAB_HUMAN_NETWORK_RELATION
Purpose 	:   A Program for Human Network Relations in R  
Author		:   Durga Prasad
Reviewer 	:   Jothi Periasamy
Date and Time	:   16/01/2019 11:48 hrs
Version		:   1.0	
Change History 	: 

____________________________________________________________________________________________

	Who				   When 			  Why
____________________________________________________________________________________________


	DP				16/01/2019		    Initital Release 

____________________________________________________________________________________________


/*******************************************************************************************

## Program Description : A Program for Human Network Relations in R  

## R Development Environment & Runtime - R Studio, Anaconda, Jupyter

vAR_CSLAB_ENV_VARIABLE_PATH = Sys.getenv("R_TUTORIAL_PATH")

vAR_CSLAB_FILE = "Human_Relationships.rdata"

vAR_CSLAB_FILE_PATH = paste(vAR_CSLAB_ENV_VARIABLE_PATH,vAR_CSLAB_FILE,sep="")

#load(vAR_CSLAB_FILE_PATH)

#Human_Relationships[5:10,1:20]

#Human_Relationships <- as.matrix(Human_Relationships)

#Human_Relationships[Human_Relationships>=1] <- 1

#Human_Relationships <- Human_Relationships %*% t(Human_Relationships)

#Human_Relationships[5:10,5:10]

#library(igraph)

#vAR_CSLAB_G <- graph.adjacency(Human_Relationships, weighted=T, mode = "undirected")

#vAR_CSLAB_G <- simplify(vAR_CSLAB_G)

#V(vAR_CSLAB_G)$label <- V(vAR_CSLAB_G)$name

#V(vAR_CSLAB_G)$degree <- degree(vAR_CSLAB_G)

#set.seed(3952)

#vAR_CSLAB_layout1 <- layout.fruchterman.reingold(vAR_CSLAB_G)

#plot(vAR_CSLAB_G, layout=vAR_CSLAB_layout1)

/*******************************************************************************************
  Disclaimer.

      We are providing this code block strictly for learning and researching, this is not a 
production ready code. We have no liability on this particular code under any circumstances; 
users should use this code on their own risk. All software, hardware and othr products that 
are referenced in these materials belong to the respective vendor who developed or who owns 
this product.

/*******************************************************************************************
