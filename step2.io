Step2 := Object clone

Step2 num := 0

Step2 getNumber := method(
  u := UserInput clone
  self num = u get("Enter a number") asNumber
)

Step2 print_fibs := method(num,
  i := 1
  x := 0
  z := 1
  "Printing the first " print 
  num print
  " fibs" print
  x println
  (num - 1) repeat(z println; z = x + i; x = i; i = z)
  x
)

Step2 run := method(

  num := self getNumber
  self print_fibs(num)

)