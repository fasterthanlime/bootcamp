
main: func {
    mem1 := gc_malloc(8)
    mem2 := gc_malloc(1)
    
    printf("mem2 - mem1 = %zd [ UInt8 ]\n", (mem1 as UInt8*) - (mem2 as UInt8*))
    printf("mem2 - mem1 = %zd [Pointer]\n", (mem1)           - (mem2))
}
