import structs/HashMap

main: func {
 
    map := HashMap<Int, Int> new(3)
    
    for(i in 0..10) {
        map put(i, i)
    }
    
    for(val in map) {
        val toString() println()
    }
    
}
