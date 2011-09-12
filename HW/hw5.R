################################################################################
### FILENAME: hw/hw5.R
###
### AUTHOR: J. P. Olmsted --- jpolmsted@NOSPAM.gmail.com
###
### DATE: Sat Jan 22 16:50:21 2011
###
### DESCRIPTION: Problem 5 for R Course Problem Set
################################################################################
vGGP <- require(ggplot2)

data(airmiles)
data(discoveries)

dfTime <- as.data.frame(ts.intersect(airmiles, discoveries))

vAEven <- with(dfTime, airmiles %% 2 == 0)
vAOdd <- !vAEven
vDEven <- with(dfTime, discoveries %% 2 == 0)
vDOdd <- !vDEven

dfTime$yeartype <- 3
dfTime$yeartype[vAEven & vDEven] <- 2
dfTime$yeartype[vAOdd & vDOdd] <- 1

summary(as.factor(dfTime$yeartype))
summary(dfTime$yeartype)

## > summary(as.factor(dfTime$yeartype))
##  1  2  3 
##  3  5 15 
## > summary(dfTime$yeartype)
##    Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
##   1.000   2.000   3.000   2.522   3.000   3.000

summary(subset(dfTime, dfTime$yeartype == 1))

 ##    airmiles      discoveries       yeartype
 ## Min.   : 6753   Min.   :1.000   Min.   :1  
 ## 1st Qu.:11761   1st Qu.:1.000   1st Qu.:1  
 ## Median :16769   Median :1.000   Median :1  
 ## Mean   :14447   Mean   :1.667   Mean   :1  
 ## 3rd Qu.:18294   3rd Qu.:2.000   3rd Qu.:1  
 ## Max.   :19819   Max.   :3.000   Max.   :1

summary(subset(dfTime, dfTime$yeartype == 2))

 ##    airmiles      discoveries     yeartype
 ## Min.   : 1052   Min.   :0.0   Min.   :2  
 ## 1st Qu.: 3362   1st Qu.:0.0   1st Qu.:2  
 ## Median :12528   Median :2.0   Median :2  
 ## Mean   :12929   Mean   :1.6   Mean   :2  
 ## 3rd Qu.:22362   3rd Qu.:2.0   3rd Qu.:2  
 ## Max.   :25340   Max.   :4.0   Max.   :2  

summary(subset(dfTime, dfTime$yeartype == 3))

 ##    airmiles      discoveries       yeartype
 ## Min.   :  412   Min.   :0.000   Min.   :3  
 ## 1st Qu.: 1402   1st Qu.:1.000   1st Qu.:3  
 ## Median : 5948   Median :1.000   Median :3  
 ## Mean   : 7611   Mean   :1.867   Mean   :3  
 ## 3rd Qu.: 9284   3rd Qu.:2.500   3rd Qu.:3  
 ## Max.   :29269   Max.   :4.000   Max.   :3

dfTime$col[dfTime$airmiles <=
           mean(dfTime$airmiles)
           ] <- ifelse(vGGP, alpha("red", 0.5), "red"
                       )
                       
dfTime$col[dfTime$airmiles >
           mean(dfTime$airmiles)
           ] <- ifelse(vGGP, alpha("blue", 0.5), "blue"
                       )


plot(y = dfTime$discoveries,
     x = dfTime$airmiles,
     main = "Contrived Scatterplot",
     ylab = "Yearly Import Discoveries",
     xlab = "Yearly Miles Traveled in Air",
     col = dfTime$col,
     pch = dfTime$yeartype
     )


     

