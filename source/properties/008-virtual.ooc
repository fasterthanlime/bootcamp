Test: class {
    virtual: String {
        set(value) {
            "set(): New value: %s" format(value) println()
        }
        get {
            "get()" println()
            "Hello!"
        }
    }
}

main: func {
    test := Test new()
    test virtual = "hello world"
    test virtual println()
} 
