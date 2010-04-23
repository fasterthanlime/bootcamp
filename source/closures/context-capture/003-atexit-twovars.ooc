import os/Env

main: func {
    
    msg := "Pleased to meet you"
    name := Env get("USER")
    
    atexit(func {
        "%s, %s" format(msg, name) println()
    })
}
