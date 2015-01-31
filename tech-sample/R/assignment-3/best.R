best <- function(state, outcome) {
    
    valid_outcomes = c("heart attack","heart failure","pneumonia")
    
    if (!is.element(outcome, valid_outcomes)){
        stop('outcome is not present')
    }
    
    outcome <- read.csv("outcome-of-care-measures.csv", colClasses = "character")

    outcome_state <- outcome[outcome$State == state,]
    
    nState <- nrow(outcome_state)
    
    if (nState == 0){
        stop('invalid state')
    }
    
    # heart attack : column 11 
    # Heart failure : column 17
    # Pneumonia : column 23
    #outcome[,11] <- as.numeric(outcome[, 11])
    #outcome[,17] <- as.numeric(outcome[, 17])
    #outcome[,23] <- as.numeric(outcome[, 23])
    
 
}