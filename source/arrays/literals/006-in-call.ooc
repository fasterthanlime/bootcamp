import structs/ArrayList
import os/Process

main: func {

    output := Process new(["ls", "-l"] as ArrayList<String>) getOutput() //trim(" \n")
    output println()
    
}