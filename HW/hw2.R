################################################################################
### FILENAME: hw/hw2.R
###
### AUTHOR: J. P. Olmsted --- jpolmsted@NOSPAM.gmail.com
###
### DATE: Sat Jan 22 16:14:13 2011
###
### DESCRIPTION: Problem 2 for R Course Problem Set
################################################################################


vText <- "My primary academic interests are the development and application of new
methodological approaches to questions regarding American political institutions.
At present, my research is focused on identifying challenges associated with the
use of ideal point estimation across various institutions and improving on
inadequacies. In particular, my recent work has focused on the quality of
different sorts of bridge observations, modeling non-observations, and unifying
interesting extensions to the IRT ideal point approach with the original spatial
voting model."

vTextS <- strsplit(vText, split = "")[[1]]

vTextSL <- tolower(vTextSplit)

vInAlpha <- is.element(vTextSplit, letters)

vTextSLA <- subset(vTextSplitL, vInAlpha)

vCounts <- summary(as.factor(vTextSLA))

vValues <- subset(1:26, is.element(letters, names(vCounts)))

vTextSum <- sum(vCounts * vValues)

print(vTextSum)

## Answer: 5556
