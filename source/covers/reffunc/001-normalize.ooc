
Vec3: cover {
    
    x, y, z: Float

    init: func@ (=x, =y, =z) {}
    
    set321: func@ {
        x = 3
        y = 2
        z = 1
    }
    
}

main: func {
    v := Vec3 new(1, 2, 3)
    printf("v = %.2f, %.2f, %.2f!\n", v x, v y, v z)
    
    v set321()
    printf("v = %.2f, %.2f, %.2f!\n", v x, v y, v z)
}

