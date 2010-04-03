
main: func {
    a := "Hi from context-data inside the closure!"
    
    b := func {
        "Hi from closure-data inside the closure!" println()
        a println()
    }
    
    b()
    "Hi from outside the closure!" println()
}

