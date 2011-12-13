Step1 := Object clone

Step1 run := method (
  i := 1
  l := 0
  while( l < 10 ,
    while( i < 6,
      self printnum(i) 
      i = i+1
    )
    l = l+1
    i = 1
  )
)

Step1 printnum := method (num, num println)