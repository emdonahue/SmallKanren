tests
testDisjoinedComma
	"Tests that exclusions merge together properly."

	| c |
	c := no1 , no2 , (no3 , no4).
	self assert: c absent equals: 1.
	self assert: c rest absent equals: 2.
	self assert: c rest rest absent equals: 3.
	self assert: c rest rest rest absent equals: 4