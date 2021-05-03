tests
testComma
	"Tests that exclusions merge together properly."

	| c |
	c := no1, no2.
	self assert: c absent equals: 1.
	self assert: c rest absent equals: 2.