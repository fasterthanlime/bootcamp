import structs/ArrayList

main: func {
 
   array: Int[]
    for(i in 0..3)  array add(i + 1)
    print(array)
    
}

print: func (array: Int[]) {
    for(i in 0..3) "array[%d] = %d" format(i, array[i]) println()
}
