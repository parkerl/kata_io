u := UserInput clone

while ((num := u get("Enter a number with more than 2 decimals")) != "exit",
 
  num asNumber asString(0,5) println
  num asNumber asString(0,2) println
  left := num split(".") first
  right := num split(".") last
  
  left alignRight(10,"0") print "." print right alignLeft(10,"0") println
   
  
  
)
 

