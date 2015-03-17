find . -not -name \*java

#All the files in the current directory that does not have a write permission for user and group

find . -not -perm -ug=w

#All files owned by 'ssinghal'

find . -owner ssinghal

# Find files older than 30 days
find . -ctime +30

# Delete files older than 30 days


# Find with Exec 
find . -name "*vw*" -exec grep -il "order by" {} \;
