import text/StringTokenizer

main2: func {
    for(part in "One.two..." split('.', true))
        "'%s' " format(part) print()
    println()
}
