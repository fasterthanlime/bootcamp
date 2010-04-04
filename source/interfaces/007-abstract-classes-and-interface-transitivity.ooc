main: func {
	bar := Bar new()
	bar woot()
    doWoot(bar)

    barpowa := BarPowa new()
    barpowa woot()
    doWoot(barpowa)
}

doWoot: func (w: IFoo) {
    w woot()
}

IFoo: interface {
	woot: func()
}

Foo: abstract class implements IFoo {}

Bar: class extends Foo {
	woot: func() {
		"WOOT" println()
	}
}

IFooPowa: interface implements IFoo {}

BarPowa: class implements IFooPowa {
    woot: func () {
        "WOOT POWAAA" println()
    }
}
