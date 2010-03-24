import Module1

run: func {
    
    m1 := Module1 new()
    m1 prop = 42
    printf("m1 prop = %d\n", m1 prop)
    m1 display()
    
}
