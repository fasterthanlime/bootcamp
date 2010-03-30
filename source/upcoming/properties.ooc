Person: class {
    /* An advanced property. */
    age: UInt {
        set (=age) {
            if(age > 120)
                "IMBA!" println()
        }
        get // default getter
    }

    /* A simple property that in fact only has a getter and whose value is
       computed on each new get operation. */
    imba: Bool {
        get {
            age > 120
        }
    }

    /* A shortcut that creates a default getter and setter. */
    name: String
}

person := Person new()
person name = "Hello World"
person age = 5
person age = 300000
"%s: %d %d" format(person name, person age, person imba) println()
person imba = true /* ERROR! */
