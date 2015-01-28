import java.util.regex.Matcher
import java.util.regex.Pattern

def pattern = "regexp_*"

def string = "REGEXP_LIKE"

matcher = string =~ /(?i)pattern/

println matcher.matches()
