shout: func() -> String {
    "Yeeha!" 
}

main: func() {
    if (shout() startsWith("J")) {
        "Something loud with a J." println()
    } else if (shout() startsWith("Puh-lease")) {
        "Pretty please" println()
    } else if (shout() == "Yeeha!") {
        shout() println()
    } else {
        "This should never happen" println()
    }
}
