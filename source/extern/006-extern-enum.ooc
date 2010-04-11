include numbers

Variables: extern(numbers) enum {
    x, y, z
    fooBar extern(foo_bar)
}

test: func(value: Variables) {
    "%d" format(value) println()
}

main: func {
    "x=%d y=%d z=%d" format(Variables x, Variables y, Variables z) println()

    value := Variables x
    "Value = %d" format(value) println()

    test(Variables z)

    "Foobar is %d" format(Variables fooBar) println()
}
