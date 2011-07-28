fname := ("test-" .. (Date now asString("%m-%d-%Y")) ..".txt")

fname println


File with(fname) remove create

