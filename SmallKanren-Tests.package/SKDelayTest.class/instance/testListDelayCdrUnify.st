cdr-ground
testListDelayCdrUnify
	"Unbound cars still unify like normal."

	| s |
	s := ((1 cons: 2) car: y cdrIn: [ :d | x === d ]) run: SKState new.
	self assert: s isState.
	self assert: s => x equals: 2.
	self assert: s => y equals: 1