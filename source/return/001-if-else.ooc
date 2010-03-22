main: func {
    happy(42) println()
    happy(23) println()
}

happy: func (number: Int) -> String {
    // here, the compiler shouldn't complain, because all cases are handled
    if(number == 42) {
        return "Yay =)"
    } else {
        return "Aww :("
    }
}
