tests
testComma
	"Tests that exclusions merge together properly."

	| c |
	c := (x excludes: 1) , (x excludes: 2).
	self assert: c excluded equals: 1.
	self assert: c next excluded equals: 2.