import structs/HashMap

main: func {
	
	map := HashMap<String, String> new()
    
    map put("hobo", "haba")
    // FIXME it should work with "hobo clone()"
	("hobo = " + map get("hobo")) println()
	
}
