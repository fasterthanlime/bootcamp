
main: func {
    
    classify(2)  println()
    classify(4)  println()
    classify(89) println()
    
    return 0
    
}

classify: func (i: Int) -> String {
    
    match (i) {
        case 2 => "Two,yay!"
        case 4 => "Four, yay!"
        case   => "Huh, wtf?"
    }
    
}
