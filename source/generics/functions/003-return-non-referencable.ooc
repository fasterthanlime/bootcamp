
get: func <T> (t: T) -> T {
    
    return 42
    
}

main: func -> Int {
    
    a : Int
    a = get(21)
    printf("The answer is %d\n", a)
    return 0
    
}
