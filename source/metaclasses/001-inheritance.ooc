Message: class {
    
}

KeyboardMessage: class extends Message {}

listen: func <T> (T: Class, call: Func (T)) {    
    printf("Listening to messages of type %s\n", T name)
    
    call(KeyboardMessage new())
}

main: func {
    listen(KeyboardMessage, func (k: KeyboardMessage) {})
}
