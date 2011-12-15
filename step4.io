Step4 := Object clone do(
u := UserInput clone

get_input := method(
  
  self D := u get("Enter a diameter") asNumber

  self v := u get("Enter a velocity") asNumber

  self rho := u get("Enter a density") asNumber

  self mu := u get("Enter a viscosity") asNumber
)

flow := method( (D*v*rho)/mu)

run := method(
  get_input
  flow print " " print

  if(flow<2100) /
    then("Laminar" println) /
  elseif(flow<=4000) /
    then("Transient" println) /
  else("Turbulent" println)
 )
)
 

 