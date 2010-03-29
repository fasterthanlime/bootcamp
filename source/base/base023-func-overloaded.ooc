add: func ~threeVariables(x, y, z: Int) -> Int {
    x + y + z
}
add: func ~twoVariables(x, y: Int) ->Int {
    add(x, y, 0)
}

main: func {
    "Adding 2 and 4 = %d" format(add(2,4)) println()
    "Adding 5, 10, 28 = %d" format(add(5,10,28)) println()
}
