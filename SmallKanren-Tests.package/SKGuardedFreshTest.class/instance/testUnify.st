tests
testUnify 	
	"self assert: (x pairo: [ :a :d | a === 1 & (d === 2) ]) & (x == (1 cons: 2)) => x equals: (1 cons: 2)."
	| st |
	st := ((x match2: #(_ | _) o: [ :a :d | a === 1 & (d === 2) ]) run: s runtime: r).
	self assert: (st unify: x with: 2) equals: failure.
	self assert: (st unify: x with: (2 cons: 2) runtime: r) equals: failure.
	self assert: (st unify: x with: (1 cons: 3) runtime: r) equals: failure.
	self assert: (st unify: x with: (1 cons: 2) runtime: r) isState.
	self assert: (st unify: x with: (1 cons: 2) runtime: r) substitution size equals: 1.