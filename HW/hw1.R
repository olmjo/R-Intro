################################################################################
### FILENAME: hw/hw1.R
###
### AUTHOR: J. P. Olmsted --- jpolmsted@NOSPAM.gmail.com
###
### DATE: Sat Jan 22 16:05:43 2011
###
### DESCRIPTION: Problem 1 for R Course Problem Set
################################################################################

mDraws <- replicate(1000,
                    rf(10, 3, 7)
                    )

vMeans <- apply(mDraws,
                2,
                mean
                )

vSD <- sd(vMeans)
print(vSD)

## Answer: Assymptotically about 0.6

