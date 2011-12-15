Step3 := Object clone


Step3 getInput := method(
  u := UserInput clone

  values := u get("Enter a comma separated list: ")
)

Step3 sort := method(values,
l := values split(",")

l = l sort
)

Step3 run := method(
  self sort(self getInput) print
)

