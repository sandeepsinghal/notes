corrFile <- function (fileName, threshold = 0) {
    x <- read.csv(fileName)
    
    cData <- x[!is.na(x$"sulfate") & !is.na(x$"nitrate") & x$"sulfate",]
    
    if (nrow(cData) > threshold) {
        sulfate <- cData[, c("sulfate")]
        nitrate <- cData[, c("nitrate")]
        monitorCor <- cor(sulfate, nitrate)
        return(round(monitorCor, digits=5))
    }    
}

corr <- function(directory, threshold = 0) {
    files = list.files(directory)
    corVector <- vector(mode = "numeric")

    for (file in files){
        fileName <- paste(directory, "/", file, sep ="")
        m <- corrFile(fileName, threshold)
        corVector <- c(corVector, m)
        if (fileName == "specdata/020.csv") {
            #break
        }
    }
    corVector
}
