Step2Test := UnitTest clone do(
	setUp := method(
		super(setUp)
	)

	tearDown := method(
		super(tearDown)
	)
  
  testCorrectFib := method(
    fib_printer := Step2 clone
    assertEquals(fib_printer print_fibs(10), 34)
      
  )
  
  testAllFibsPrinted := method(
      fib_printer := Step2 clone
      fib_printer printnum := method( num, 
        self l append(num)
        
         
      )
      
      fib_printer l := List clone
      
      exp := list(0,1,1,2,3,5)
      
      fib_printer print_fibs(6)
      
      assertEquals(fib_printer l, exp)
  )
  
)