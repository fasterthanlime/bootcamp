
Animal: class {
	
	poke: func {
		"Animal pookadibooh!" println()
	}
	
}


Dog: class extends Animal {
	
	poke: func {
		//super poke()
        super()
		"Dog pokidi-poke" println()
	}
	
}

main: func {
	Dog new() poke()
}
