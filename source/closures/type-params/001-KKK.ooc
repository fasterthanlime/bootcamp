
compareInts: func <T> (t1, t2: T) -> Bool {
    (t1 as Int) < (t2 as Int)
}

main: func {
    turlututu: Func <K> (K, K) -> Bool = compareInts
    
    printf("3  > 42 ? %s\n", turlututu(3,  42) toString())
    printf("31 > 17 ? %s\n", turlututu(31, 17) toString())
}
