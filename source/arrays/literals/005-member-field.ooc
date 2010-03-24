import structs/ArrayList

main: func {
    Test new()
}

Test: class {
    list := [1, 2, 3] as ArrayList<Int>
    list2 := [4, 5, 6]
    list3 := static [7, 8, 9]
    
    init: func {
        for(i in list) {
            i toString() println()
        }
        
        for(i in list2) {
            i toString() println()
        }
        
        for(i in This list3) {
            i toString() println()
        }
    }    
}
