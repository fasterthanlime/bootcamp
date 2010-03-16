import structs/ArrayList

main: func {
 
    list := [1, 2, 3]
    for(i in list) {
        i toString() println()
    }
    
    list2 := [4, 5, 6]
    for(i in list2) {
        i toString() println()
    }
    
}
