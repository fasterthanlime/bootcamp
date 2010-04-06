import structs/HashMap

main: func {
    
    map := HashMap<String, String> new()
    
    map put("first_name", "Bugs")
    map put("last_name", "Bunny")
    map put("type", "Rabbit")
    
    //FIXME: the first should work and the second shouldn't
    //map each(func <K, V> (key, value: String@) {
    map each(func (key, value: String@) {
        "%s = %s" format(key, value) println()
    })
    
}