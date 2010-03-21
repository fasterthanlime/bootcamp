import text/Regexp

main: func {
	r := Regexp compile("t(.*?)t(.*?) another")
    
    m := r matches("This is a test, and that another test.")
	if (m) {
		"match!" println()
	}

    "Subgroups..." println()
    for(group: String in m) {
        group println()
    }
}
