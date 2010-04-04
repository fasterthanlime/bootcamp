
main: func {
    
    "Hey what's your name? " print()
    stdout flush()
    name := String new(128)
    fscanf(stdin, "%128s", name) // who has a name larger than 128 anyway?
    
    msg := "Pleased to meet you"
    
    atexit(func {
        "%s, %s" format(msg, name) println()
    })
    
    exit(0)
}
