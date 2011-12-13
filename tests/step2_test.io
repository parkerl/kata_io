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
  
)