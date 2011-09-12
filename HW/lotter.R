################################################################################
### FILENAME: HW/lotter.R
###
### AUTHOR: J. P. Olmsted --- jpolmsted@NOSPAM.gmail.com
###
### DATE: Tue Feb  1 12:50:35 2011
###
### DESCRIPTION: R script for playing lottery
################################################################################

vNames <- c("CD", "RM", "ST", "MS")
vTickets <- c(2, 12, 13, 46)

set.seed(20110201)

sample(x = vNames,
       size = 2,
       replace = FALSE,
       prob = vTickets
       )
