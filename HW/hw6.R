################################################################################
### FILENAME: hw/hw6.R
###
### AUTHOR: J. P. Olmsted --- jpolmsted@NOSPAM.gmail.com
###
### DATE: Sat Jan 22 17:13:42 2011
###
### DESCRIPTION: Problem 6 for R Course Problem Set
################################################################################

FindK <- function(.L)
  {
    k <- 1
    repeat
      {
        vB <- (1 : k) + k        
        if (sum(vB) < .L)
          {
            k <- k + 1
            next
          } else
        {
          break
        }        
      }
    k <- k - 1
    return(list(k = k,
                sum = sum(1:k)
                )
           )
  }


FindK(10)
## $k
## [1] 2

## $sum
## [1] 3

FindK(100)
## $k
## [1] 7

## $sum
## [1] 28

FindK(1000)
## $k
## [1] 25

## $sum
## [1] 325
