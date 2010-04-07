
messages := ["Ohai", "I like the way you hack", "See you on the other side"]
numbers := [1, 2, 42]

main: func {
    
    messages2 := ["Ohai", "I like the way you hack", "See you on the other side"]
    numbers2 := [1, 2, 42]
    
    for(i in 0..3) {
        messages [i] as String println()
        messages2[i] as String println()
    }
    
    for(i in 0..3) {
        numbers [i] toString() println()
        numbers2[i] toString() println()
    }
    
}
