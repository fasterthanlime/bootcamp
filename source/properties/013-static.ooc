Counter: class {
    init: func {
        This count = This count + 1 // TODO
    }

    count: static UInt {
        set(=count) {
            "set(%d)" format(This count) println()
        }
        get {
            "get() -> %d" format(This count) println()
            This count
        }
    }
}

Counter count = 1

main: func {
    Counter new()
    Counter new()
    Counter new()
    "=> %d" format(Counter count) println()
}
