
main: func {
    a := 4
    sayHi(a& as Pointer)
    sayHi(2& as Pointer)
    println()
}

sayHi: func (i: Int@) {
    i toString() print()
}

