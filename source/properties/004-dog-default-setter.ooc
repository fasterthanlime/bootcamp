Dog: class {
    name: String {
        set
        get 
    }
}

main: func {
    dog := Dog new()
    dog name = "Woofie"
    dog name = "Bob"
    dog name println()
}
