include ./wrapped

wrapped: extern func {}

main: func {
    atexit(wrapped)
  
    a := "ooc"
    atexit(func { a println() })
    
    exit(0)
}

closure: func (a: String) {
    a println()
}

/*
wrapped: func {
    b := closure as Func(String)
    b("a")
}
*/
