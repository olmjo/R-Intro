################################################################################
### FILENAME: hw/hw3.R
###
### AUTHOR: J. P. Olmsted --- jpolmsted@NOSPAM.gmail.com
###
### DATE: Sat Jan 22 16:26:02 2011
###
### DESCRIPTION: Problem 3 for R Course Problem Set
################################################################################

GetOddness <- function(x)
  {
    return(x %% 2)
  }

print(sum((1:20)[as.logical(GetOddness(1:20))]))

## Answer: 100

