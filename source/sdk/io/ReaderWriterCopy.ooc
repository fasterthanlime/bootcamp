import text/Buffer, io/Writer

main: func {
    dest := BufferWriter new()
    source := BufferReader new()
    source buffer() append("If you can read this then the transfer worked!")

    dest as Writer write~fromReaderDefaultBufferSize(source)
    dest buffer() toString() println()
}
