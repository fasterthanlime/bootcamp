import structs/ArrayList

main: func {
    happy(1) println()
    happy(2) println()
    happy(3) println()
    happy(4) println()
    happy(5) println()
    happy(6) println()
}

happy: func (number: Int) -> String {
    // here, the compiler shouldn't complain, because all cases are handled
    if(number == 1) {
        "One"
    } else if(number == 2) {
        "Two"
    } else if(number == 3) {
        "Three"
    } else if(number == 4) {
        "Four"
    } else if(number == 5) {
        "Five"
    } else {
        "Wohow!"
    }
}
