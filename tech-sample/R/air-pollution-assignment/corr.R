corrFile <- function (fileName, threshold = 0) {
    x <- read.csv(fileName)
    
    cData <- x[!is.na(x$"sulfate") & !is.na(x$"nitrate"),]
    
    if (nrow(cData) > threshold) {
        sulfate <- cData[, c("sulfate")]
        nitrate <- cData[, c("nitrate")]
        monitorCor <- cor(sulfate, y = nitrate)
        return(round(monitorCor, digits=5))
    }    
}

corr <- function(directory, threshold = 0) {
    files = list.files(directory)
    corVector <- vector(mode = "numeric")
    fileVector <- vector(mode = "character")

    for (file in files){
        fileName <- paste(directory, "/", file, sep ="")
        m <- corrFile(fileName, threshold)
        if (!is.null(m)) {
            corVector <- c(corVector, m)
            fileVector <- c(fileVector, fileName)            
        }        
        
        if (fileName == "specdata/001.csv") {
            #break
        }
        
    }
    corVector
}
