import structs/ArrayList

animals := ["cow", "sheep", "cat", "dog", "platypus"]

if (animals[0] == "dog") {
    "Woof" println()
} else if (animals[0] startsWith('s')) {
    "Baah" println()
} else if (animals[0] == "cat") {
    "Meow" println()
} else {
    "It's a %s!" format(animals[0]) println()
}
