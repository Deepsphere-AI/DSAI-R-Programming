
/**************************************************************************************
  
  File Name 	:   vAR_CSLAB_PAYROLL_COST_PREDICTION
  Purpose 	:   A Program for Payroll Cost Prediction in R
  Author	:   Durga Prasad
  Reviewer 	:   Jothi Periasamy
  Date and Time	:   16/01/2019 10:21 hrs
  Version	:   1.0	
  Change History: 
_________________________________________________________________________________

   Who				   When 			        Why
_________________________________________________________________________________


    DP				16/01/2019		           Initital Release 

_________________________________________________________________________________


/**************************************************************************************

## Program Description : A Program for Payroll Cost Prediction in R  

## R Development Environment & Runtime - R Studio, Anaconda, Jupyter

library("plotrix")  # Package for Various Plotting Functions

library("RODBC")    # Package for ODBC Data Access

library(ggplot2)    # Package for Graphical Plot

library(MASS)

vAR_CSLAB_ENV_VARIABLE_PATH = Sys.getenv("R_TUTORIAL_PATH")

vAR_CSLAB_FILE = "Payroll.txt"

vAR_CSLAB_FILE_PATH = paste(vAR_CSLAB_ENV_VARIABLE_PATH,vAR_CSLAB_FILE,sep="")

vAR_CSLAB_PAYROLL <- read.table(vAR_CSLAB_FILE_PATH, header=TRUE, sep="\t")

vAR_CSLAB_PAYROLL

plot(vAR_CSLAB_PAYROLL$Payroll_Cost,type="b",lwd=2, xaxt="n",ylim=c(0,2500000),col="blue", xlab="Year",ylab="Payroll_Cost", main="Payroll Cost of Workforce")
axis(1,at=1:length(vAR_CSLAB_PAYROLL$Payroll_Cost),labels=vAR_CSLAB_PAYROLL$Payroll_Cost)

vAR_CSLAB_ENV_VARIABLE_PATH = Sys.getenv("R_TUTORIAL_PATH")

vAR_CSLAB_FILE = "Workforce_Proficiency.txt"

vAR_CSLAB_FILE_PATH = paste(vAR_CSLAB_ENV_VARIABLE_PATH,vAR_CSLAB_FILE,sep="")

vAR_CSLAB_PROFICIENCY <- read.table(vAR_CSLAB_FILE_PATH, header=TRUE, sep="\t")
    
vAR_CSLAB_PROFICIENCY

vAR_CSLAB_SKILL<- c(vAR_CSLAB_PROFICIENCY$Excellent)

vAR_CSLAB_SKILL1<- c(vAR_CSLAB_PROFICIENCY$Fair)

vAR_CSLAB_SKILL2<- c(vAR_CSLAB_PROFICIENCY$Good)

vAR_CSLAB_SKILL3<- c(vAR_CSLAB_PROFICIENCY$Handson)

vAR_CSLAB_SKILL

vAR_CSLAB_SKILL1

vAR_CSLAB_SKILL2

vAR_CSLAB_SKILL3

barplot(vAR_CSLAB_SKILL, main="Employee Skill Proficiencies",
        xlab="Analttical Skill", col=c("darkgreen","blue","Red","grey","green"))

barplot(vAR_CSLAB_SKILL1, main="Employee Skill Proficiencies",
        xlab="Technical Skill", col=c("darkgreen","blue","Red","grey","green"))

barplot(vAR_CSLAB_SKILL2, main="Employee Skill Proficiencies",
        xlab="Communication Skill", col=c("darkgreen","blue","Red","grey","green"))

barplot(vAR_CSLAB_SKILL3, main="Employee Skill Proficiencies",
        xlab="Time Management Skill", col=c("darkgreen","blue","Red","grey","green"))

vAR_CSLAB_ENV_VARIABLE_PATH = Sys.getenv("R_TUTORIAL_PATH")

vAR_CSLAB_FILE = "Requisition.txt"

vAR_CSLAB_FILE_PATH = paste(vAR_CSLAB_ENV_VARIABLE_PATH,vAR_CSLAB_FILE,sep="")

vAR_CSLAB_REQUISITION <- read.table(vAR_CSLAB_FILE_PATH, header=TRUE, sep="\t")

vAR_CSLAB_REQUISITION

vAR_CSLAB_PLOT_REQUISITION <- c(vAR_CSLAB_REQUISITION$Requisition)

pie3D(vAR_CSLAB_PLOT_REQUISITION, main="Requisition by Recruiters", explode=0.1, col=rainbow(length(vAR_CSLAB_PLOT_REQUISITION)),
      
      labels=c("Kristen Night Elizebeth","Richard Pucci Micheal","Maribeth Reese","Blake Bell", "Williiam Brubaker"))

/**************************************************************************************
  Disclaimer.

We are providing this code block strictly for learning and researching, this is not a production ready code. We have no liability on this particular code under any circumstances; users should use this code on their own risk. 

All software, hardware and othr products that are referenced in these materials belong to the respective vendor who developed or who owns this product.

/**************************************************************************************