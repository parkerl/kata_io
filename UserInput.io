UserInput := Object clone

UserInput get := method(m,

reader := ReadLine 

reader loadHistory

reader prompt = m .. " > "

line := reader readLine

reader addHistory(line)

reader saveHistory

return line

)