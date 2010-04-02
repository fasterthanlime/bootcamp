main: func {
    fffuuuu := getFunc()
    fffuuuu(1, 2, 3)
}

getFunc: func -> Func (...) {
    func (a, b, c: Int) {
        "%d, %d, %d, it works!" format(a, b, c) println()
    }
}

