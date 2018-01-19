cdr-unified
testListUnifiedCdrUnify
	"Unbound cars still unify like normal."

	| s |
	s := x === (1 cons: 2) & (x car: y cdrIn: [ :d | z === d ]) run: SKState new.
	self assert: s isState.
	self assert: s => z equals: 2.
	self assert: s => y equals: 1