
# Reading from a file 
d = read.table("foobar.txt", 
               sep="\t", 
               col.names=c("id", "name"), 
               fill=FALSE, 
               strip.white=TRUE)

