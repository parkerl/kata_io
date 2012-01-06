Step6 := Object clone do(
    u := UserInput clone

    result := ""
    calculate := method(
        input,
       if(result == "") \ 
          then(result = doString(input)) \ 
        else(result = doString(result asString .. input))
                  )
      while ((calc := u get("")) != "exit",
          calculate(calc)
          calc print
          " = " print
           result println
           
       )
 )
