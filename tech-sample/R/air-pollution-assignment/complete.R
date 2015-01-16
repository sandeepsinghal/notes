complete <- function(directory, id = 1:332) {
    
    cData <- data.frame(id= integer(), nobs= integer())
    
    for (i in id){
        fileNumber = sprintf("%03d", i)
        file <- paste(directory, "/", fileNumber , ".csv", sep="")
        x <- read.csv(file)
        y <- x[!is.na(x$"sulfate") & !is.na(x$"nitrate"),]
        n <- nrow(y)
        cData <- rbind(cData, data.frame(id=i, nobs=n))
    }
    
    print(cData)
}
