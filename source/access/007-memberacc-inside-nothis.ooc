main: func {

	IntContainer new()

}

IntContainer: class {

	value: Int

	init: func {
		value = 42
		this print()
	}

	print: func {
		printf("The answer is %d\n", value)
	}

}
