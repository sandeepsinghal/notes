rankhospital <- function(state, outcome, num = "best") {
    
    if (!checkValidOutcome(outcome)){
        stop('invalid outcome')
    }
    
    rank <- getRank(num)
    
    
    # Read the data and subset to get data only for that state
    outcomeData <- read.csv("outcome-of-care-measures.csv", colClasses = "character")
    outcomeState <- outcomeData[outcomeData$State == state,]
    
    if (nrow(outcomeState) == 0){
        stop('invalid state')
    }
    
}

getRank <- function (rank = "best") {
    
    if (rank == "best")
        return(1)
    # We will use "-1" as the sort order 
    if (rank == "worst")
        return (-1)
    if (!is.na (as.integer(rank))) {
        return (as.integer(rank))
    }
    
    # Treat 0 as a bad rank and we will return from the main function if it is 0 
    return(0)
    
}

checkValidOutcome <- function (outcome) {
    
    valid_outcomes = c("heart attack","heart failure","pneumonia")
    
    if (!is.element(outcome, valid_outcomes)){
        return(FALSE)
    }
    return(TRUE)
}