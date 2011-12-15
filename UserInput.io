UserInput := Object clone

UserInput input := File standardInput()

UserInput get := method(m,
line := input readLine(m .. " > ")
)