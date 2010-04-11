Multiples: enum(*2) { x=1, y ,z }
Sums: enum (+4) { a, b, c }

main: func {
    "x=%d y=%d z=%d" format(Multiples x, Multiples y, Multiples z) println()
    "a=%d b=%d c=%d" format(Sums a, Sums b, Sums c) println()
}
