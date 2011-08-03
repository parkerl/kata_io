u := UserInput clone

fib := method(
step,
i := 1
x := 0
z := 1
(step-1) repeat(z = x + i; x = i; i = z;)
)

while ((step := u get("Enter step number")) != "exit",
fib(step asNumber) println
)