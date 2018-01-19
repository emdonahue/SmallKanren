tests
testCarConflict
	"Conflicting cars in delayed lists should fail early."

	| s |
	s := (x car: 1 cdrIn: [ :d | d isEmptyo ]) | (x car: 2 cdrIn: [ :d | d isEmptyo ]) & (x car: 1 cdrIn: [ :d | d isEmptyo ]) run: SKState new.
	self assert: s isDelayed.
	self assert: s step isState.
	self assert: s step => x equals: 1 cons