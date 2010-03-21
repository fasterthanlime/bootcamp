import structs/HashMap

main: func {
    
    hashouille := HashMap<String, String> new()
    hashouille put("yes", "no")
    hashouille put("blanc", "noir")
    hashouille put("noir", "blanc")
    
    for(keyyy in hashouille getKeys()) {
        println(keyyy + " = " + hashouille get(keyyy))
    }
    
}