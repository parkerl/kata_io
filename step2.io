i := 1
x := 0
z := 1


Curses do(
begin

)

Curses move(0, 0) write("Enter a number of steps to calculate: ") refresh
input := Sequence clone

loop(
  c := Curses asyncReadCharacter
    if(c) then(        
      if(c == 13, break) 
      input append(c)    
      Curses writeCharacter(c)
      Curses refresh     
    ) else(System sleep(0.05); yield)
)

Curses end

"Printing fibs to : " print input println
x println
input asNumber repeat(z println; z = x + i; x = i; i = z)