Greeter: class {
    greet: String {
        get {
            "Hello!"
        }
    }
}

main: func {
    g := Greeter new()
    g greet println()
}
