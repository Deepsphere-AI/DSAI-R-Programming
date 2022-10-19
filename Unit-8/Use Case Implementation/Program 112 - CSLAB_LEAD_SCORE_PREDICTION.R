
/**************************************************************************************
  
  File Name 	:   CSLAB_LEAD_SCORE_PREDICTION
  Purpose 	:   A Program for Lead Score Prediction in R
  Author	:   Durga Prasad
  Reviewer 	:   Jothi Periasamy
  Date and Time	:   16/01/2019 9:58 hrs
  Version	:   1.0	
  Change History: 
_________________________________________________________________________________

   Who				   When 			        Why
_________________________________________________________________________________


    DP				16/01/2019		          Initital Release 

_________________________________________________________________________________


/**************************************************************************************

## Program Description : A Program for Lead Score Prediction in R  

## R Development Environment & Runtime - R Studio, Anaconda, Jupyter

# library("plotrix")  # Package for Various Plotting Functions

library("RODBC")    # Package for ODBC Data Access

library(ggplot2)    # Package for Graphical Plot

library(MASS) 

set.seed(1234567890)

library("neuralnet") # Package for Training Nueral Networks

vAR_CSLAB_ENV_VARIABLE_PATH = Sys.getenv("R_TUTORIAL_PATH")

vAR_CSLAB_FILE = "ROI.txt"

vAR_CSLAB_FILE_PATH = paste(vAR_CSLAB_ENV_VARIABLE_PATH,vAR_CSLAB_FILE,sep="")

vAR_CSLAB_RES <- read.table(vAR_CSLAB_FILE_PATH, header=TRUE, sep="\t")

vAR_CSLAB_RES

vAR_CSLAB_PLOT_ROI <- c(vAR_CSLAB_RES$ROI)

barplot(vAR_CSLAB_RES$ROI, main="ROI by Campaign Type", 
        xlab="Campaign Type", col=c("light green","green", "light blue" ))

vAR_CSLAB_ENV_VARIABLE_PATH = Sys.getenv("R_TUTORIAL_PATH")

vAR_CSLAB_FILE = "Campaigns.txt"

vAR_CSLAB_FILE_PATH = paste(vAR_CSLAB_ENV_VARIABLE_PATH,vAR_CSLAB_FILE,sep="")

vAR_CSLAB_RES <- read.table(vAR_CSLAB_FILE_PATH, header=TRUE, sep="\t")

vAR_CSLAB_PLOT_CAMPAIGN <- c(vAR_CSLAB_RES$Revenue)

pie3D(vAR_CSLAB_PLOT_CAMPAIGN, main="Top 5 Campaigns by Revenue", explode=0.1, col=rainbow(length(vAR_CSLAB_PLOT_CAMPAIGN)),
    
    labels=c("DM Campaign to Top Customers","GC Product Webinar","International Engineer Association","User Conference"))

vAR_CSLAB_ENV_VARIABLE_PATH = Sys.getenv("R_TUTORIAL_PATH")

vAR_CSLAB_FILE = "Traffic_Sources.csv"

vAR_CSLAB_FILE_PATH = paste(vAR_CSLAB_ENV_VARIABLE_PATH,vAR_CSLAB_FILE,sep="")

vAR_CSLAB_TRAFFIC<-read.csv(vAR_CSLAB_FILE_PATH)

vAR_CSLAB_TRAFFIC

plot(vAR_CSLAB_TRAFFIC$Direct,type="b",lwd=2,
     xaxt="n",ylim=c(0,60000),col="black",
     xlab="Time",ylab="Traffic",
     main="Traffic Sources Past 60 Days")
axis(1,at=1:length(vAR_CSLAB_TRAFFIC$Date),labels=vAR_CSLAB_TRAFFIC$Date)
lines(vAR_CSLAB_TRAFFIC$Refferel,col="red",type="b",lwd=2)
lines(vAR_CSLAB_TRAFFIC$Search,col="orange",type="b",lwd=2)

legend("topright",legend=c("Direct","Refferel","Search"),
       lty=1,lwd=2,pch=21,col=c("black","red","orange","purple"),
       ncol=2,bty="n",cex=0.8,
       text.col=c("black","red","orange","purple"),
       inset=0.01)

vAR_CSLAB_ENV_VARIABLE_PATH = Sys.getenv("R_TUTORIAL_PATH")

vAR_CSLAB_FILE = "Lead_Score.csv"

vAR_CSLAB_FILE_PATH = paste(vAR_CSLAB_ENV_VARIABLE_PATH,vAR_CSLAB_FILE,sep="")

vAR_CSLAB_LEAD<-read.csv(vAR_CSLAB_FILE_PATH)

vAR_CSLAB_LEAD

vAR_CSLAB_TRAINSET <- vAR_CSLAB_LEAD[1:5, ] 

vAR_CSLAB_TRAINSET

vAR_CSLAB_LEADSCORENET <- neuralnet(Lead_Score_2014 ~ Lead_Score_2013, vAR_CSLAB_TRAINSET, hidden = 4, lifesign = "minimal", 
                                linear.output = TRUE, threshold = 0.1) 

plot(vAR_CSLAB_LEADSCORENET, rep = "best")

vAR_CSLAB_RESULTS <- data.frame(Customers = vAR_CSLAB_TRAINSET$Customer, Lead_Score_Actual_2014 = vAR_CSLAB_TRAINSET$Lead_Score_2013, Lead_Score_2015_Prediction = (vAR_CSLAB_TRAINSET$Lead_Score_2014)) # Prediction of Customer Attrition by Linear Regression Algorithm

vAR_CSLAB_RESULTS[1:5,]
