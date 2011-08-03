Regex

u := UserInput clone

while ((fname := u get("Enter a file name")) != "exit",

f := File with(fname)
 
( f exists) ifFalse("File not found" println; continue)

 
 f openForReading
 
 allLines := f contents
 
 allLines println
 
 capitals := allLines allMatchesOfRegex("[A-Z]+ ")
 
 capitals foreach(s, s println)
 )
