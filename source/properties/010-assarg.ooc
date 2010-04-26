Test: class {
    name: String {
        set(=name) {
            "set()" println()
        }
        get
    }
}

main: func {
    test := Test new()
    test name = "HELLO WORLD"
    test name println()
}
