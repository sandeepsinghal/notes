best <- function(state, outcome) {
    
    options(warn=-1)
    valid_outcomes = c("heart attack","heart failure","pneumonia")
    
    if (!is.element(outcome, valid_outcomes)){
        stop('outcome is not present')
    }
    
    outcomeData <- read.csv("outcome-of-care-measures.csv", colClasses = "character")

    outcomeState <- outcomeData[outcomeData$State == state,]
    
    nState <- nrow(outcomeState)
    
    if (nState == 0){
        stop('invalid state')
    }

    column = numeric()
    
    if (outcome == 'heart attack'){
        column <- 11    
    }
    else if (outcome == 'heart failure'){
        column <- 17
    }
    else if (outcome == 'pneumonia'){
        column <- 23
    }
    
    outcomeState[,column] <- as.numeric(outcomeState[,column])
    interestingColumnVector <- outcomeState[,column]
    #print (sort(interestingColumnVector))
    minValue <- min(interestingColumnVector, na.rm = TRUE)
    minIndex <- which (interestingColumnVector == minValue)
    
    hospitalName <- outcomeState[minIndex, 2]
 
}