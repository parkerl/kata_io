Step4Test := UnitTest clone do(
	setUp := method(
		super(setUp)
	)

	tearDown := method(
		super(tearDown)
	)
    
    testAskForNumbers := method(
    
      flow_calc := Step4 clone
      
      u := UserInput clone
      
      u message_list := List clone
      
      u get := method(msg,
       message_list append(msg)
       0
      )
      
      flow_calc u = u
      
      l := list(
      "Enter a diameter",
      "Enter a velocity",
      "Enter a density",
      "Enter a viscosity"
      )
      
      flow_calc get_input
      
      assertEquals( u message_list, l)
      
    )
    
    testCalculateFlow := method(
      flow_calc := Step4 clone
      
     flow_calc D := 10
     flow_calc v := 10
     flow_calc rho := 10
     flow_calc mu := 1000
     
     assertEquals(flow_calc flow, 1)
    )
    
 ) 