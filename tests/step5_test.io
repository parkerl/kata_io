Step5Test := UnitTest clone do(
	setUp := method(
		super(setUp)
	)

	tearDown := method(
		super(tearDown)
	)
    
    testAskToCalcAgain := method(
    
      flow_calc := Step5 clone
      
      u := UserInput clone
      
      u message_list := List clone
      
       u input_list := list(
             "n",
      10,
      10,
      10,
      10,
      "y",
      10,
      10,
      10,
      10)
           
      u get := method(msg,
       message_list append(msg)
       
       input_list pop
      )
      
      flow_calc u = u
      
      l := list(
      "Enter a diameter",
      "Enter a velocity",
      "Enter a density",
      "Enter a viscosity",
      "Calculate again (y|n)",
      "Enter a diameter",
      "Enter a velocity",
      "Enter a density",
      "Enter a viscosity",
      "Calculate again (y|n)"
      )
      
      flow_calc run
      
      assertEquals( u message_list, l)
      
    )
    
 ) 