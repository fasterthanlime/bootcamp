Greeter: class {
    greet: String {
        set(foo) {
            foo println()
        }
    }
}

main: func {
    g := Greeter new()
    g greet = "HELLO WORLD!"
}
