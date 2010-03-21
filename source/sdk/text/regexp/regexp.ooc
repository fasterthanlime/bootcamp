import text/Regexp

main: func {
	r := Regexp compile("t(.*?)t(.*?) another")
    
    m := r matches("This is a test, and that another test.")
	if (m) {
		"match!" println()
	}

    "Substring #1: %s\n Substring #2: %s" format(m substring(1), m substring(2)) println()
}
