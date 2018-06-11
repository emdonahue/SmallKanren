tests
testCarConflict
	"Conflicting cars in delayed lists should fail early."

	| s |
	s := ((x car: 1 cdrIn: [ :d | d isEmptyo ]) | (x car: 2 cdrIn: [ :d | d isEmptyo ]) & (x car: 1 cdrIn: [ :d | d isEmptyo ])) runner.
	self assert: s stream isDelayed.
	self assert: s step stream isState.
	self assert: s step stream => x equals: 1 cons.