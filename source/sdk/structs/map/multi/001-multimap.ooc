import structs/MultiMap

StringContainer: class {
    content : String
    init: func ~withContent(=content) {}
    println: func { content println() }
}

main: func {
    
    mm := MultiMap<String, StringContainer> new(5)
    for(i in 0..10) {
        key : String = (i < 3 ? "hobo" : "haba")
        mm put(key, StringContainer new(i toString()))
    }

    "Keys = " println()
    for(k : String in mm keys) k println()
    
    "Values = " println()
    for(m in mm) m println()
    
}
