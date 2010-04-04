
main: func {
    msg := "Pleased to meet you"
    
    call(func (name: String) {
        "%s, %s" format(msg, name) println()
    })
}

call: func (f: Func(String)) {
    "Hey what's your name? " print()
    stdout flush()
    name := String new(128)
    fscanf(stdin, "%128s", name) // who has a name larger than 128 anyway?
    
    f(name)
}
