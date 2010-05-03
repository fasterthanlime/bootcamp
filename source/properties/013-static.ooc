Counter: class {
    init: func {
        count = count + 1 // TODO
    }

    count: static UInt {
        set(=count) {
            "set(%d)" format(count) println()
        }
        get {
            "get() -> %d" format(count) println()
            count
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
