import text/Buffer

main: func {
    dest := FileWriter new("hosts")
    source := FileReader new("/etc/hosts")

    dest write(source)
    dest buffer() toString() println()
}
