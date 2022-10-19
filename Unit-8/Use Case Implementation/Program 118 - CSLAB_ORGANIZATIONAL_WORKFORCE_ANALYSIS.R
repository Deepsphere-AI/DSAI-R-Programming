
*******************************************************************************************

File Name       :   vAR_CSLAB_ORGANIZATIONAL_WORKFORCE_ANALYSIS
Purpose 	:   A Program for Organizational Workforce Analysis in R  
Author		:   Durga Prasad
Reviewer 	:   Jothi Periasamy
Date and Time	:   16/01/2019 12:42 hrs
Version		:   1.0	
Change History 	: 

____________________________________________________________________________________________

	Who				   When 			  Why
____________________________________________________________________________________________


	DP				16/01/2019		    Initital Release 

____________________________________________________________________________________________


/*******************************************************************************************

## Program Description : A Program for Organizational Workforce Analysis in R  

## R Development Environment & Runtime - R Studio, Anaconda, Jupyter

install.packages("igraph")

require("igraph")

library(readr)

vAR_CSLAB_ENV_VARIABLE_PATH = Sys.getenv("R_TUTORIAL_PATH")

vAR_CSLAB_FILE = "edgesdata3.txt"

vAR_CSLAB_FILE_PATH = paste(vAR_CSLAB_ENV_VARIABLE_PATH,vAR_CSLAB_FILE,sep="")

vAR_CSLAB_edgesdata3 <- read_delim(vAR_CSLAB_FILE_PATH, "\t", escape_double = FALSE, trim_ws = TRUE)

head(vAR_CSLAB_edgesdata3)

vAR_CSLAB_edgesdata3.network<-graph.data.frame(vAR_CSLAB_edgesdata3, directed=F)

V(vAR_CSLAB_edgesdata3.network) #prints the list of vertices (people)

E(vAR_CSLAB_edgesdata3.network) #prints the list of edges (relationships)

degree(vAR_CSLAB_edgesdata3.network) #print the number of edges per vertex (relationships per people)

plot(vAR_CSLAB_edgesdata3.network)

vAR_CSLAB_bad.vs<-V(vAR_CSLAB_edgesdata3.network)[degree(vAR_CSLAB_edgesdata3.network)<3]

vAR_CSLAB_edgesdata3.network<-delete.vertices(vAR_CSLAB_edgesdata3.network, vAR_CSLAB_bad.vs)

V(vAR_CSLAB_edgesdata3.network)$color<-ifelse(V(vAR_CSLAB_edgesdata3.network)$name=='CA', 'blue', 'red')

E(vAR_CSLAB_edgesdata3.network)$color<-ifelse(E(vAR_CSLAB_edgesdata3.network)$grade==9, "red", "grey")

E(vAR_CSLAB_edgesdata3.network)$color<-ifelse(E(vAR_CSLAB_edgesdata3.network)$spec=='X', "red", ifelse(E(vAR_CSLAB_edgesdata3.network)$spec=='Y', "blue", "grey"))

V(vAR_CSLAB_edgesdata3.network)$size<-degree(vAR_CSLAB_edgesdata3.network)/10

par(mai=c(0,0,1,0)) 

plot(vAR_CSLAB_edgesdata3.network,layout=layout.fruchterman.reingold,
     main='Organizational Network Example',
     vertex.label.dist=0.8,
     vertex.frame.color='blue',
     vertex.label.color='black',
     vertex.label.font=0.5,
     vertex.label=V(vAR_CSLAB_edgesdata3.network)$name,
     vertex.label.cex=0.7
)
dev.off()


/**************************************************************************************************************************************************************************
  Disclaimer.

      We are providing this code block strictly for learning and researching, this is not a production ready code. We have no liability on this particular code under any circumstances; 
users should use this code on their own risk. All software, hardware and othr products that are referenced in these materials belong to the respective vendor who developed or who owns 
this product.

/**************************************************************************************************************************************************************************
