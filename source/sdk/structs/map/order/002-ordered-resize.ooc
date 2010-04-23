import structs/OrderedMultiMap

main: func {
 
    map := OrderedMultiMap<Int, Cell<Int>> new(2)
    
    for(i in 0..50) {
        map put(i, Cell<Int> new(i))
    }
    
    for(val in map) {
        val val as Int toString() println()
    }
    
}
