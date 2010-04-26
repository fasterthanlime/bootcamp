Test: cover from Int {
    awesomeness: Int {
        set(value) {
            "set(%d)" format(value) println()            
        }
        get {
            "get() -> %d" format(1337) println()
            1337
        }
    }
}

main: func {
    test: Test
    test awesomeness = 123456
    test awesomeness toString() println()
}
