
 u := UserInput clone

input := Sequence clone

again := true

while (again,

D := u get("Enter a diameter") asNumber

v := u get("Enter a velocity") asNumber

rho := u get("Enter a density") asNumber

mu := u get("Enter a viscosity") asNumber

flow := (D*v*rho)/mu

flow print " " print

 if(flow<2100) then("Laminar" println) elseif(flow<=4000) then("Transient" println) else("Turbulent" println)
 
if((u get("Calculate again (y|n)"))=="y") then(again = true) else (again = false)
 
 )