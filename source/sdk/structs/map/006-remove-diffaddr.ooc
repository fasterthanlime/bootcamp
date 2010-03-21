import structs/HashMap

printMap: func (map: HashMap<String, String>) {
    //for(key: String in map keys) {
    for(key: String in map getKeys()) {
        "%s: %s" format(key, map get(key)) println()
    }
}

main: func {
    map := HashMap<String, String> new()
    map put("db-libs", "DB libs!")
    map put("ui-libs", "UI libs!")
    map put("__result", "RESULT!")
    
    printMap(map)
    val1 := map get("__result" clone())
    "get = %s" format(val1 ? val1 : "(nil)") println()
    
    "\n---\n" println()
    
    success := map remove("__result" clone())
    if(success) {
        ">> remove successful o/" println()
    } else {
        ">> remove failed :(" println()
    }
    
    "\n---\n" println()
    
    printMap(map)
    val2 := map get("__result" clone())
    "get = %s" format(val2 ? val2 : "(nil)") println()
}
