
/*******************************************************************************************

File Name       :   CSLAB_MODEL_INHERITANCE_V1
Purpose 	:   A Program for Model Inheritance in R
Author		:   Durga Prasad
Reviewer 	:   Jothi Periasamy
Date and Time	:   14/01/2019 18:59 hrs
Version		:   1.0	
Change History 	: 

____________________________________________________________________________________________

	Who				   When 			  Why
____________________________________________________________________________________________


	DP				14/01/2019		  Initital Release 

____________________________________________________________________________________________


/*******************************************************************************************

## Program Description : A Program for Model Inheritance in R

## R Development Environment & Runtime - R Studio, Anaconda, Jupyter Notebook

# Generate some 'data', with normally distributed residuals,with the two variables known to have a certain relationship

vAR_CSLAB_dtr <- (rnorm(n = 100, mean = 30, sd = 4))

vAR_CSLAB_density <- rnorm(n= 100, mean = 0.5, sd = 0.1) * vAR_CSLAB_dtr

# Examine the data in three ways
vAR_CSLAB_dtr

vAR_CSLAB_density

vAR_CSLAB_data1 <- data.frame(vAR_CSLAB_dtr,vAR_CSLAB_density)

hist(vAR_CSLAB_density, col = "light grey")

par(mfrow = c(1,1))

plot(vAR_CSLAB_dtr,vAR_CSLAB_density, pch = 19, col = 'blue')

plot(vAR_CSLAB_dtr,vAR_CSLAB_density, pch = 19, col = 'blue', xlab = 'Distance to Road (m)', ylab = 'Population Density (ind/m2)')

mean(vAR_CSLAB_density)

sd(vAR_CSLAB_density)

vAR_CSLAB_se <- sd(vAR_CSLAB_density)/sqrt(length(vAR_CSLAB_density))   

vAR_CSLAB_se

vAR_CSLAB_cv <- sd(vAR_CSLAB_density)/mean(vAR_CSLAB_density)

vAR_CSLAB_cv

#library(pastecs)

#vAR_CSLAB_stat.desc(vAR_CSLAB_density)

vAR_CSLAB_mod1 <- lm(density~vAR_CSLAB_dtr)

# Add the regression lion to the plot
abline(vAR_CSLAB_mod1, col = 'blue')

# Look at a summmary of the regression model's results
summary(vAR_CSLAB_mod1)

# Understanding the t-test and coefficient of determination

abline(mean(vAR_CSLAB_density),0, col = 'red', lty = 3)

library(ggplot2)

ggplot(vAR_CSLAB_data1, aes(x=vAR_CSLAB_dtr, y=vAR_CSLAB_density)) +
          geom_point(colour = 'red', size = 5) +   
          geom_smooth(method=lm, colour = 'black', fill = 'red', alpha = 0.25) +
          ylab("Density (ind/km2)") +
          xlab("Distance to River (km))")

# Shift from simple OLS regression to multiple OLS regression
vAR_CSLAB_veg <- rnorm(n= 100, mean = 0.7, sd = 0.1) * vAR_CSLAB_dtr

vAR_CSLAB_mod1A <- lm(vAR_CSLAB_density ~ vAR_CSLAB_dtr + vAR_CSLAB_veg)

summary (vAR_CSLAB_mod1A)

# Consider collinearity when interpreting the multiple regression results
cor(vAR_CSLAB_dtr,vAR_CSLAB_veg)                  

vAR_CSLAB_mod1C <- lm(vAR_CSLAB_density~vAR_CSLAB_veg)      

summary(vAR_CSLAB_mod1C)                    

library(scatterplot3d)

scatterplot3d(vAR_CSLAB_density ~ vAR_CSLAB_dtr + vAR_CSLAB_veg)

vAR_CSLAB_mod2 <- glm(vAR_CSLAB_density ~ vAR_CSLAB_dtr, family = gaussian)

summary(vAR_CSLAB_mod2)

vAR_CSLAB_mod1 <- lm(vAR_CSLAB_density ~vAR_CSLAB_dtr)

summary(vAR_CSLAB_mod1)

vAR_CSLAB_survive <- c(0,0,0,0,1,0,1,1,1,1,1)

vAR_CSLAB_home.range.quality <- seq(0,1,0.1)

vAR_CSLAB_mod4b <- lm(vAR_CSLAB_survive ~ vAR_CSLAB_home.range.quality)

summary(vAR_CSLAB_mod4b)

plot(vAR_CSLAB_home.range.quality, vAR_CSLAB_survive, pch = 19, ylim = c(-0.2, 1.2),
     main = 'Inappropriate lm() fit to binomial Y')

points(vAR_CSLAB_home.range.quality,fitted(vAR_CSLAB_mod4b),col=2, pch = 19)

lines(vAR_CSLAB_home.range.quality,fitted(vAR_CSLAB_mod4b),col=2)

vAR_CSLAB_mod4a <- glm(vAR_CSLAB_survive ~ vAR_CSLAB_home.range.quality, family = binomial)

plot(vAR_CSLAB_home.range.quality, vAR_CSLAB_survive, pch = 19, ylim = c(-0.2, 1.2), 
     main  = 'Appropriate glm() fit to binomial Y')

points(vAR_CSLAB_home.range.quality,fitted(vAR_CSLAB_mod4a),col=2, pch = 19)   

summary(vAR_CSLAB_mod4a)

vAR_CSLAB_slope <- inv.logit(13.046)

vAR_CSLAB_slope

rm(list=ls(all=TRUE))

vAR_CSLAB_kenya.herdsize = read.table("kenyaherdsize3.txt", 
                            header = TRUE, sep = ",", fill= TRUE, dec = ".")


vAR_CSLAB_reduced.data <-subset(vAR_CSLAB_kenya.herdsize, DistPred < 2.0, select = 
                                c(DistPred, GroupSize, Species,BushWoodGrass, HabOpen.Close))


vAR_CSLAB_wildebeest.only <-  subset(vAR_CSLAB_reduced.data, Species == 'Wildbst', 
                           select = c(GroupSize, BushWoodGrass, HabOpen.Close, DistPred))

vAR_CSLAB_modA <- glm(formula = GroupSize ~ BushWoodGrass, data = vAR_CSLAB_wildebeest.only)

vAR_CSLAB_modB <- glm(formula = GroupSize ~ HabOpen.Close, data = vAR_CSLAB_wildebeest.only)

vAR_CSLAB_modC <- glm(formula = GroupSize ~ DistPred, data = vAR_CSLAB_wildebeest.only)

vAR_CSLAB_modD <- glm(formula = GroupSize ~ DistPred + BushWoodGrass, data = vAR_CSLAB_wildebeest.only)

# Compare AIC scores for the 4 models using functions in the MuMIn (Multi-Model Inference) package:

library(MuMIn)

vAR_CSLAB_Cand.mods <- list(vAR_CSLAB_modA, vAR_CSLAB_modB, vAR_CSLAB_modC, vAR_CSLAB_modD)

vAR_CSLAB_aictab <- model.sel(vAR_CSLAB_Cand.mods)

vAR_CSLAB_aictab

print.data.frame(vAR_CSLAB_aictab,digits=2)

vAR_CSLAB_x <-model.avg(vAR_CSLAB_Cand.mods, beta = TRUE, revised.var = TRUE)

summary(vAR_CSLAB_x, digits = 3)


/*******************************************************************************************
  
Disclaimer.

      We are providing this code block strictly for learning and researching, this is not a 
production ready code. We have no liability on this particular code under any circumstances; 
users should use this code on their own risk. All software, hardware and other products that 
are referenced in these materials belong to the respective vendor who developed or who owns 
this product.

/*******************************************************************************************

