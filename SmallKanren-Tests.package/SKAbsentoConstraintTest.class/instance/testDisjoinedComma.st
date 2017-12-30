tests
testDisjoinedComma
	"Tests that exclusions merge together properly."

	| c |
	c := (x excludes: 1) , (x excludes: 2) , ((x excludes: 3) , (x excludes: 4)).
	self assert: c excluded equals: 1.
	self assert: c next excluded equals: 2.
	self assert: c next next excluded equals: 3.
	self assert: c next next next excluded equals: 4 