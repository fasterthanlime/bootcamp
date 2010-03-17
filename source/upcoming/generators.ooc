
generatorFunction: func -> Int {
    for (i in 0..5) {
        yield i * i-1 // new keyword signalizing that the function returns more than once
    }
}

call: func {
    for a in generatorFunction() {
        // a will be:
        // -1
        // 0
        // 3
        // 8
        // 15
    }
}

// Important: There is *no* built-up of a return list, all elements are evaluated and returned lazily
// Implementation might be set upon coroutines and also be useful for list-comprehensions
        
