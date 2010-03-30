class: PropertyAlphabet {
    // Just like existing attributes. (But it does generate functions in the C
    // code for access, that can be used for C calling ooc code. The ooc code
    // will still use the quick attribute lookup instead of the functions.)
    a: Int

    // Custom setter and getter. They will be used as 'obj b = 1' and 'obj b',
    // but they will use the generated functions, not regular attribute access.
    // Note that these setter/getter act just like regular attributes.
    b: Int {
        set(value) {
            b = value
        }
        get { b }
    }

    // Exactly the same as b.
    c: Int {
        set(=c) {} // Shortcut!
        get { c }
    }

    d: Int {
        set(d) {
            // 'd' is the argument, so you must use 'this d' for the attribute.
            this d = d
        }
        get {
            // This is just short for 'this d', like in any other method.
            d
        }
    }

    // What's this? No getter? That's right. 'obj e' is be an error, but
    // 'obj e = 1' will work. (This is more useful for properties that do some
    // calcuation and set other properties or call methods.)
    e: Int {
        set(=e) {}
    }

    // Just the opposite of e. Setter, but no getter. 'obj f = 1' is an error,
    // but 'obj f' will work. (This is more useful for calcuated properties,
    // possibly derived from other properties or methods.)
    f: Int {
        get { f }
    }

    // A custom setter and the default direct-access getter just like 'a' has.
    g: Int {
        set(=e) {}
        get
    }

    // Just the opposite of g.
    h: Int {
        set
        get { h }
    }

    // This is exactly equivalent to "i: Int". (Default setter and getter that
    // use direct access to the attribute.)
    i: Int {
        set
        get
    }

    // Just showing that properties can do more advanced things.
    j: Int {
        set(val) {
            val toString() println()
            // This will call b's custom setter.
            b = val + 2
        }
        get {
            // This will call b's custom getter.
            b - 2
        }
    }

    // Explaining set(foo) and get() inside property definitions.
    k: Int {
        set(val) {
            if(val == 0){
                // Sets the underlying value of k.
                k = val
            } else {
                // Calls the setter method again (this method). (Recursive)
                set(val - 1)
            }
        }
        get {
            // get() works, just like set() to call the custom getter. 'k' will
            // just get the underlying value without calling the setter.
            k
        }
    }

    // get() can be called inside set{} and vice versa.
    l: Int {
        set(val) {
            l = get() + val
        }
        get {
            // The custom setter will be called with the current value of l
            // whenever you call the getter.
            set(l)
            l
        }
    }

    // The compiler will error and tell you about this useless property. It has
    // no setter or getter, and thus could never, ever be used.
    m: Int {}

    // We have direct access to _n, but we still have custom accessors for it.
    _n: Int
    n: Int {
        set(val) { _n = val }
        get { _n }
    }

    // A more interesting example of the idea above.
    _o: Int
    o: String {
        set(val) { _o = val toInt() }
        get { _o toString() }
    }

    // This will call the custom setter methods if they exist.
    init: func (=a, =b, =c, =d) {}

    // This also calls the custom setter methods if they exist.
    init: func ~explicit (.a, .b) {
        this a = a
        this b = b
    }
}
