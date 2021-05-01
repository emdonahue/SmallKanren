cdr-ground
testListDelayCdrUnify
	"Unbound cars still unify like normal."

	| s |
	s := ((1 cons: 2) car: y cdrIn: [ :d | x === d ]) runtime.
	self assert: s stream isState.
	self assert: s stream => x equals: 2.
	self assert: s stream => y equals: 1