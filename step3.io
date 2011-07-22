Curses begin
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

l := input split(",")

l = l sort

l print