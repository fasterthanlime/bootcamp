Test: class {
    name: String {
        extern(getMyName) get
        extern(setMyName) set
    }
}

getMyName: unmangled func (this: Test) -> String {
    "Getting me on %s" format(this class name) println()
    "yo"
}

setMyName: unmangled func (this: Test, name: String) {
    "setting to %s" format(name) println()
}

main: func {
    test := Test new()
    test name println()
    test name = "HELLO"
}
