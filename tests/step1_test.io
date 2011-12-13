Step1Test := UnitTest clone do(
	setUp := method(
		super(setUp)
	)

	tearDown := method(
		super(tearDown)
	)
  
  testPrints1to5 := method(
    nr := Step1 clone
    
    nr printnum_called := 0
    
    nr printnum := method(num,
      self printnum_called = printnum_called + 1 
    )
    nr run
    
    assertEquals(nr printnum_called, 50)
      
  )
  
)