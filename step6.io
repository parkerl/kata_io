u := UserInput clone

result := ""

while ((calc := u get("")) != "exit",
 if(result == "") then(calc print; result := doString(calc)) else(calc = result asString .. calc; calc print; result := doString(result asString .. calc))

" = " print result println
 
 )
 