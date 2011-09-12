################################################################################
### FILENAME: hw/hw4.R
###
### AUTHOR: J. P. Olmsted --- jpolmsted@NOSPAM.gmail.com
###
### DATE: Sat Jan 22 16:30:01 2011
###
### DESCRIPTION: Problem 4 for R Course Problem Set
################################################################################

.Trials <- 3

vSeq <- seq(from = 2, to = 3, by = 0.1)

for (s in vSeq)
  {
    vCors <- rep(0, .Trials)
                                        #
                                        #
    for (i in 1:.Trials)
      {
        vX <- rnorm(1e6)
        vY <- rnorm(length(vX),
                    mean = vX,
                    sd = s
                    )
        vCors[i] <- cor(vX, vY)
      }
                                        #
                                        #
    vConv <- .Trials == sum(vCors < 0.4 & vCors > 0.3)
                                        #
                                        #
    if (vConv)
      {
        print(s)
        break
      } else
    {
      next
    }    
  }

## Answer: About 2.4
