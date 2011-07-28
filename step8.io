u := UserInput clone

while ((fname := u get("Enter a file name")) != "exit",

 f := File with(fname)
 
 f openForUpdating
 
 allLines := f readLines
 
 htmlContent := "<html><body>"
 
 allLines foreach(l,
 
 htmlContent = htmlContent .. "<p>" .. l .. "</p>"
 
 )
 
 htmlContent = htmlContent .. "</body></html>"
 
 f setContents(htmlContent)
 
 f close
  
)
 

