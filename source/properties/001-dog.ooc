Dog: class {
    name: String {
        set(value) {
            "set() - old value: %s - new value: %s" format(get(), value) println()
            name = value
        }
        get {
            "get() -> %s" format(name) println()
            name
        }
    }
}

main: func {
    dog := Dog new()
    dog name = "Woofie"
    dog name = "Bob"
    dog name println()
}
