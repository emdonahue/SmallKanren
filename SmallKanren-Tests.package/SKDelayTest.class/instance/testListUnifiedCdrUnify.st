cdr-unified
testListUnifiedCdrUnify
	"Unbound cars still unify like normal."

	| s |
	s := (x === (1 cons: 2) & (x car: y cdrIn: [ :d | z === d ])) runner.
	self assert: s stream isState.
	self assert: s stream => z equals: 2.
	self assert: s stream => y equals: 1