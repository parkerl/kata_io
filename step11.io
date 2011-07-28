u := UserInput clone

while ((fname := u get("Enter a file name")) != "exit",

 f := File with(fname)
 
 ( f exists) ifFalse("File not found" println; continue)

 
 f openForUpdating
 
 allLines := f readLines
 
 htmlContent := "<html><body>"
 
 allLines foreach(l,
 
 htmlContent = htmlContent .. "<p>" .. l .. "</p>\n"
 
 )
 
 htmlContent = htmlContent .. "</body></html>"
 
 h := File with((f baseName) .. ".html") remove create
 
 h setContents(htmlContent)
 
 h close
 
 f close
  
)
 