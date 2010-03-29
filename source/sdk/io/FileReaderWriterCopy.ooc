import text/Buffer, io/[FileReader, FileWriter]

main: func {
    source1 := FileReader new("/etc/hosts")
    dest1   := BufferWriter new()
    source2 := BufferReader new(dest1 buffer())
    dest2   := FileWriter new("hosts")

    dest1 write(source1, 12)
    dest2 write(source2, 12)
    
    dest2 close()
}
