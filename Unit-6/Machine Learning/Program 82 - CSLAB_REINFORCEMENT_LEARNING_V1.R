
/*******************************************************************************************

File Name       :   CSLAB_REINFORCEMENT_LEARNING_V1
Purpose 	:   Code Depicting Concept of Reinforcement Learning in R
Author		:   Durga Prasad
Reviewer 	:   Jothi Periasamy
Date and Time	:   15/01/2019 18:47 hrs
Version		:   1.0	
Change History 	: 

____________________________________________________________________________________________

	Who				   When 			  Why
____________________________________________________________________________________________


	DP				15/01/2019		    Initital Release 

____________________________________________________________________________________________


/*******************************************************************************************
  
## Program Description : A Program for Reinforcement Learning in R  

## R Development Environment & Runtime - R Studio, Anaconda, Jupyter Notebook 

install.packages("MDPtoolbox")

library(MDPtoolbox)
  
set.seed(0)

mdp_example_rand(2, 2)

mdp_example_rand(2, 2, FALSE)

mdp_example_rand(2, 2, TRUE)

mdp_example_rand(2, 2, FALSE, matrix(c(1,0,1,1),2,2))

# Generates a MDP for a simple forest management problem

vAR_CSLAB_MDP <- mdp_example_forest()

# Find an optimal policy

vAR_CSLAB_results <- mdp_policy_iteration(vAR_CSLAB_MDP$P, vAR_CSLAB_MDP$R, 0.9)

# Visualise the policy

vAR_CSLAB_results$policy

# With a non-sparse matrix

vAR_CSLAB_P <- array(0, c(2,2,2))

vAR_CSLAB_P[,,1] <- matrix(c(0.5, 0.5, 0.8, 0.2), 2, 2, byrow=TRUE)

vAR_CSLAB_P[,,2] <- matrix(c(0, 1, 0.1, 0.9), 2, 2, byrow=TRUE)

vAR_CSLAB_R <- matrix(c(5, 10, -1, 2), 2, 2, byrow=TRUE)

mdp_bellman_operator(P, R, 0.9, c(0,0))

# With a sparse matrix

vAR_CSLAB_P <- list()

vAR_CSLAB_P[[1]] <- Matrix(c(0.5, 0.5, 0.8, 0.2), 2, 2, byrow=TRUE, sparse=TRUE)

vAR_CSLAB_P[[2]] <- Matrix(c(0, 1, 0.1, 0.9), 2, 2, byrow=TRUE, sparse=TRUE)

mdp_bellman_operator(P, R, 0.9, c(0,0))


/*******************************************************************************************
  Disclaimer.

      We are providing this code block strictly for learning and researching, this is not a 
production ready code. We have no liability on this particular code under any circumstances; 
users should use this code on their own risk. All software, hardware and othr products that 
are referenced in these materials belong to the respective vendor who developed or who owns 
this product.

/*******************************************************************************************