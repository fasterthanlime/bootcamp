/*
 * The two printed adresses should be the same.
 */

main: func {

    hum : Int* = gc_malloc(Int size * 3)
    hum[0] = 1
    hum[1] = 2
    hum[2] = 42

    printf("%p\n", hum)
    blahbeligurgle(hum)

}

blahbeligurgle: func <T> (data: T*) {
    printf("%p\n", data)
}

