Test: cover {
    name: String {
        set(value) {
            "set(%s)" format(value) println()
            name = value
        }
        get {
            "get() -> %s" format(name) println()
            name
        }
    }
}

main: func {
    t: Test
    t name = "hallo"
    t name println()
}
