best <- function(state, outcome) {
    
    valid_outcomes = c("heart attack","heart failure","pneumonia")
    
    if (is.element(outcome, valid_outcomes)){
        print('outcome is present')
    }
    else {
        print('outcome is not present')
    }
    
    outcome <- read.csv("outcome-of-care-measures.csv", colClasses = "character")
    
    outcome_state <- outcome[outcome$State == state,]
    nState <- nrow(outcome_state)
    
    if (nState == 0){
        print('invalid state')
    }
    else {
        print (nState)
    }
}