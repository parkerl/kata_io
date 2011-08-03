
Number coreDiv := Number getSlot("/")

Number / := method(
d,
if(d != 0) then(return (self coreDiv(d))) else( return 0)
)

(10 coreDiv(2)) println

(1/0) println

(10/2) println

(10 / -2) println

(0 / 0) println