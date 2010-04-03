
main: func {
    a := "Bye bye!"
    atexit(func { a println() })
    
    exit(0)
}
