tests
testMultiUnify
	| st |
	st := ((s 
		add: x constraint: (SKGuardedFresh new var: x; block: [ :a :d | a === 1 ])) 
		add: x constraint: (SKGuardedFresh new var: x; block: [ :a :d | (d === 2) ])) 
			eager: r.
	self assert: (st unify: x with: 2) equals: failure.
	self assert: (st unify: x with: (1 cons: 2)) isState.
	self assert: (st unify: x with: (1 cons: 3)) equals: failure.
	self assert: (st unify: x with: (2 cons: 2)) equals: failure.
	self assert: (st unify: x with: (2 cons: 3)) equals: failure.
	