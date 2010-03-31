use proof
import proof

test("compare", func {
    s1 := "hello bye"
    s2 := "hello"
    s3 := "bye"

    assert(s1 compare(s2, 0, 5) == true, "s1(0..5) != s2")
    assert(s1 compare(s2, 6) == false, "s1(6..) == s2")

    assert(s1 compare(s3, 6) == true, "s1(6..) != s3")
    assert(s1 compare(s3) == false, "s1(0..) == s3")

})

test("length", func {
    s := "this string is 28 chars long"
    assert(s length() == 28, "length != 28")   
})

test("equals", func {
    s1 := "CAPITAL"
    s1Clone := "CAPITAL"
    s2 := "lowercase"
    s2Clone := "lowercase"

    assert(s1 equals(s2) == false, "s1 == s2")
    assert(s1 equals(s1Clone) == true, "s1 != s1Clone")
    assert(s2 equals(s2Clone) == true, "s2 != s2Clone")
})

test("toInt", func {
    assert("100" toInt() == 100, "100 base 10")
    assert("101" toInt(2) == 5, "101 base 2")
    assert("2F" toInt(16) == 47, "2F base 16")
})

test("toLong", func {
    assert("100" toLong() == 100, "100 base 10")
    assert("101" toLong(2) == 5, "101 base 2")
    assert("2F" toLong(16) == 47, "2F base 16")
})

test("toLong", func {
    assert("100" toLLong() == 100, "100 base 10")
    assert("101" toLLong(2) == 5, "101 base 2")
    assert("2F" toLLong(16) == 47, "2F base 16")
})

test("toULong", func {
    assert("100" toULong() == 100, "100 base 10")
    assert("101" toULong(2) == 5, "101 base 2")
    assert("2F" toULong(16) == 47, "2F base 16")
})

test("toFloat", func {
    assert("3.14" toFloat() == 3.14, "3.14 to float")
    assert("-0.1234" toFloat() == -0.1234, "-0.11234 to float")
})

test("toDouble", func {
    assert("1.123456789123456789123456789" toDouble() == 1.123456789123456789123456789, "1.123456789123456789123456789 to float")
})

test("isEmpty", func {
    assert("" isEmpty() == true, "empty string was not empty!")
    assert("hi" isEmpty() == false, "non-empty string is empty?")
})

test("startsWith", func {
    s := "Llamas are cool"
    assert(s startsWith("Llamas") == true, "s startsWith 'Llamas' was false")
    assert(s startsWith("Cats") == false, "s startsWith 'Cats' was true")
    assert(s startsWith('L') == true, "s startsWith 'L' was false")
})

test("endsWith", func {
    s := "This story has a happy ending."
    assert(s endsWith("happy ending.") == true, "s ends with 'happy ending.' was false")
    assert(s endsWith("sad ending.") == false, "s ends with 'sad ending.' was true")
})

test("indexOf", func {
    s := "Where is ^ waldo at?"

    assert(s indexOf('^') == 9, "Index of '^' was not 9")
    assert(s indexOf('^', 10) == -1, "'^' should not be found after index 10")

    assert(s indexOf("waldo") == 11, "Index of 'waldo' was not 11")
    assert(s indexOf("waldo", 13) == -1, "'waldo' should not be found after index 13")
})

test("contains", func {
    s := "Things are only impossible until they're not."

    assert(s contains("impossible") == true, "s should contain 'impossible'")
    assert(s contains('.') == true, "s should contain '.'")
})

test("trim", func {
    assert(" ooc is awesome " trim() == "ooc is awesome", "trim spaces at both ends failed")
    assert("'A'" trim('\'') == "A", "trim ' at both ends failed")
    assert("---hello!---" trim("---") == "hello!", "trim --- at both ends failed")
})

test("trimLeft", func {
    assert(" how goes it?" trimLeft() == "how goes it?", "trim spaces at left end failed")
    assert ("$100" trimLeft('$') == "100", "trim $ at left end failed")
    assert("@bob meet me at the store" trimLeft("@bob ") == "meet me at the store", "trim @bob at left end failed")
})

test("trimRight", func {
    assert("A string with extra spaces    " trimRight() == "A string with extra spaces", "trim spaces at right failed")
    assert("The end." trimRight('.') == "The end", "trim . at right end failed")
    assert("HEY!!!" trimRight("!!!") == "HEY", "trim !!! at right end failed")
})

test("first", func { assert("ABCDEFG" first() == 'A', "A was not first char") })

test("last", func { assert("ABCDEFG" last() == 'G', "G was not last char")})

test("lastIndex", func { assert("012345" lastIndex() == 5, "last index was not 5") })

test("lastIndexOf", func {
    s := "1,2,3,4,5 and 6"
    assert(s lastIndexOf(',') == 7, "last index of , was not 7")
})

test("substring", func {
    s := "First second third fourth"

    assert(s substring(19) == "fourth", "substring from 19..length was not 'fourth'")
    assert(s substring(6, 12) == "second", "substring from 6..12 was not 'second'")
})

test("reverse", func {
    assert("mirror" reverse() == "rorrim", "reverse of mirror was wrong")
    assert("racecar" reverse() == "racecar", "reverse of racecar was wrong")
})

test("times", func {
    assert("I" times(5) == "IIIII", "I times 5 was wrong")
    assert("ring," times(3) == "ring,ring,ring,", "ring, times 3 was wrong")
})

test("copy", func {
    original := "do NOT copy me!"
    copy := original clone()

    assert((original as Pointer) != (copy as Pointer), "original and copy are the same pointer")
    assert(original == copy, "copy is flawed")
})

test("append", func {
    s1 := "Hello "
    s2 := "human"
    s3 := s1 append(s2)

    assert(s3 == "Hello human", "append s1 to s2 failed")
    assert(s3 append('!') == "Hello human!", "append ! to s3 failed")
})

test("count", func {
    s := "I like soda. I like programming. I like pizza. I like reading."

    assert(s count('.') == 4, "count of . was not 4")
    assert(s count("like") == 4, "count of 'like' was not 4")
})

test("replace", func {
    s := "Hello Bob! Hello Jane! Hello Bill! Hello Sarah!"

    assert(s replace('!', '.') == "Hello Bob. Hello Jane. Hello Bill. Hello Sarah.", "replace ! with . failed")
    assert(s replace("Hello", "Goodbye") == "Goodbye Bob! Goodbye Jane! Goodbye Bill! Goodbye Sarah!", "replace Hello with Goodbye failed")
})

test("prepend", func {
    s1 := "pre"
    s2 := "pend"

    assert(s2 prepend(s1) == "prepend", "prepend s1 to s2 failed")
    assert("one" prepend('n') == "none", "prepend n to one failed")
})

test("toLower", func { assert("ABCdef123$" toLower() == "abcdef123$") })

test("toUpper", func { assert("ABCdef123$" toUpper() == "ABCDEF123$") })

test("charAt", func { assert("012345" charAt(3) == '3') })

test("format", func {
    s := "%s taste very good. I would eat %d of them." format("Cookies", 12)
    assert(s == "Cookies taste very good. I would eat 12 of them.")
})

test("scanf", func {
    s := "The magic number is 28. The sky is blue . Today is the 30 th."
    format := "The magic number is %d. The sky is %s . Today is the %d th."
    number := 0; date := 0
    sky := String new(100)

    s scanf(format, number&, sky, date&)
    assert(number == 28, "number scanned was not 28")
    assert(sky == "blue", "sky was not blue but '%s'" format(sky))
    assert(date == 30, "date was not 30th but '%d'" format(date))
})

test("iterator", func {
    source := "fooooobaaaar"
    i := 0

    for(c: Char in source) {
        assert(c == source[i], "%c != source[%d]" format(c, i))
        i += 1
    }
})
