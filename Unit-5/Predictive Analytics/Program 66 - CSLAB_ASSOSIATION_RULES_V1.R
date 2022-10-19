
/*******************************************************************************************

File Name       :   CSLAB_ASSOSIATION_RULES_V1
Purpose 	:   A Program for Association Rules in R
Author		:   Durga Prasad
Reviewer 	:   Jothi Periasamy
Date and Time	:   15/01/2019 13:04 hrs
Version		:   1.0	
Change History 	: 

____________________________________________________________________________________________

	Who				   When 			  Why
____________________________________________________________________________________________


	DP				15/01/2019		  Initital Release 

____________________________________________________________________________________________


/*******************************************************************************************

## Program Description : A Program for Association Rules in R

## R Development Environment & Runtime - R Studio, Anaconda, Jupyter Notebook 
  
install.packages("titanic")

library("titanic")

str(Titanic)

vAR_CSLAB_df <- as.data.frame(Titanic)

head(vAR_CSLAB_df)

vAR_CSLAB_titanic.raw <- NULL

for(i in 1:4) {
  
vAR_CSLAB_titanic.raw <- cbind(vAR_CSLAB_titanic.raw, rep(as.character(df[,i]), vAR_CSLAB_df$Freq))
  
}

vAR_CSLAB_titanic.raw <- as.data.frame(vAR_CSLAB_titanic.raw)

names(vAR_CSLAB_titanic.raw) <- names(vAR_CSLAB_df)[1:4]

dim(vAR_CSLAB_titanic.raw)

str(vAR_CSLAB_titanic.raw)

head(vAR_CSLAB_titanic.raw)

summary(vAR_CSLAB_titanic.raw)

# read it into R

#titanic <- read.table("./data/Dataset.data", header=F)

library("titanic")

#names(titanic) <- c("Class", "Sex", "Age", "Survived")

install.packages("arules")

library("arules")

vAR_CSLAB_rules.all <- apriori(titanic.raw)

vAR_CSLAB_rules.all

inspect(vAR_CSLAB_rules.all)

vAR_CSLAB_rules <- apriori(vAR_CSLAB_titanic.raw, control = list(verbose=F),
                  parameter = list(minlen=2, supp=0.005, conf=0.8),
                  appearance = list(rhs=c("Survived=No", "Survived=Yes"),
                                      default="lhs"))

quality(vAR_CSLAB_rules) <- round(quality(vAR_CSLAB_rules), digits=3)

vAR_CSLAB_rules.sorted <- sort(vAR_CSLAB_rules, by="lift")

inspect(vAR_CSLAB_rules.sorted)

vAR_CSLAB_subset.matrix <- is.subset(vAR_CSLAB_rules.sorted, vAR_CSLAB_rules.sorted)

vAR_CSLAB_subset.matrix[lower.tri(vAR_CSLAB_subset.matrix, diag=T)] <- NA

vAR_CSLAB_redundant <- colSums(vAR_CSLAB_subset.matrix, na.rm=T) >= 1

which(vAR_CSLAB_redundant)

vAR_CSLAB_rules.pruned <- vAR_CSLAB_rules.sorted[!vAR_CSLAB_redundant]

inspect(vAR_CSLAB_rules.pruned)

vAR_CSLAB_rules <- apriori(vAR_CSLAB_titanic.raw,
                  parameter = list(minlen=3, supp=0.002, conf=0.2),
                  appearance = list(rhs=c("Survived=Yes"),lhs=c("Class=1st", "Class=2nd", "Class=3rd","Age=Child", "Age=Adult"),
                  default="none"),control = list(verbose=F))

vAR_CSLAB_rules.sorted <- sort(vAR_CSLAB_rules, by="confidence")

inspect(vAR_CSLAB_rules.sorted)

install.packages("arulesViz")

library("arulesViz")

plot(vAR_CSLAB_rules.all)

/*******************************************************************************************
  
Disclaimer.

      We are providing this code block strictly for learning and researching, this is not a 
production ready code. We have no liability on this particular code under any circumstances; 
users should use this code on their own risk. All software, hardware and other products that 
are referenced in these materials belong to the respective vendor who developed or who owns 
this product.

/*******************************************************************************************

	