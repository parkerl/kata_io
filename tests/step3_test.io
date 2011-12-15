Step3Test := UnitTest clone do(
	setUp := method(
		super(setUp)
	)

	tearDown := method(
		super(tearDown)
	)
    
    testSortInput := method(
    
      sorter := Step3 clone
      
      sorter getInput := method(
      "3,2,1"
      )
      
      l := list(1,2,3)
      
      assertEquals(sorter run asString, l asString)
    
    )
    
 ) 