SGML

  u := UserInput clone

while ((fname := u get("Enter a file name")) != "exit",

 f := File with(fname)
 
 ( f exists) ifFalse("File not found" println; continue)

 
 f openForReading
 
 allLines := f contents
 
 
 
 x := allLines asXML elementsWithName("tr")
 
 csv := ""
 
 x  foreach( row,
 v := List clone
  
  row elementsWithName("td") foreach(cell,
v append(cell subitems at(0) asString asMutable strip)
)
csv = csv .. v join(",") .. "\n"
 
 )
 csv println
 
 
 h := File with((f baseName) .. ".csv") remove create
 
 h setContents(csv)
 
 h close
 
 f close
  
)
 