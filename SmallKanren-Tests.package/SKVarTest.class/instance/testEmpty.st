tests
testEmpty
	self assert: x isEmptyo runner runAll first => x equals: Cons empty.
	self assert: Cons empty isEmptyo runner runAll size equals: 1.
	self assert: (42 cons ) isEmptyo runner runAll size equals: 0.