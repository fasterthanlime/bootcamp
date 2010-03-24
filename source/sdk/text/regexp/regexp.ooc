import text/Regexp

main: func {
	r := Regexp compile("t(.*?)t(.*?) another")
    
    m := r matches("This is a test, and that another test.")
	if (m) {
		"match!" println()
	}

    "Match starts at %d and ends at %d" format(m start(0), m end(0)) println()

    "Subgroups..." println()
    for(group: String in m) {
        group println()
    }
}
