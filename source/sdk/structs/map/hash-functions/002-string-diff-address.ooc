import structs/HashMap

main: func {
    
    map := HashMap<String, String> new()
    
    key := "hoho"
    map put(key, "haha")
    
    val := map get(key clone())
    printf("val = %s\n", val ? val : "(nil)")
    
}

