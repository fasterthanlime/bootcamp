test: func(value: Int, task: Func(Int) -> Int) -> Int {
    task(value)

    // This line should NOT compile
    //task()
}

main: func {
    result := test(100, func(x: Int) -> Int { x * 2 })
    result toString() println()
}
