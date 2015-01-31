rankhospital <- function(state, outcome, num = "best") {
    
    if (!checkValidOutcome(outcome)){
        stop('invalid outcome')
    }
    
    # Read the data and subset to get data only for that state
    outcomeData <- read.csv("outcome-of-care-measures.csv", colClasses = "character")
    outcomeState <- outcomeData[outcomeData$State == state,]
    
    if (nrow(outcomeState) == 0){
        stop('invalid state')
    }
    
}


checkValidOutcome <- function (outcome) {
    
    valid_outcomes = c("heart attack","heart failure","pneumonia")
    
    if (!is.element(outcome, valid_outcomes)){
        return(FALSE)
    }
    return(TRUE)
}