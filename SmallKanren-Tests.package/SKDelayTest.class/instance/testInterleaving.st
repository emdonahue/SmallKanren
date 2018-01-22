tests
testInterleaving
	| runner |
	runner := ((x car: 1 cdrIn: [ :d | d isEmptyo ]) | (x car: 3 cdrIn: [ :d | d isEmptyo ])
		| ((x car: 2 cdrIn: [ :d | d isEmptyo ]) | (x car: 4 cdrIn: [ :d | d isEmptyo ]))) runner.
	self assert: runner next peek => x equals: 1 cons.
	self assert: runner next next peek => x equals: 2 cons.
	self assert: runner next next next peek => x equals: 3 cons.
	self assert: runner next next next next peek => x equals: 4 cons