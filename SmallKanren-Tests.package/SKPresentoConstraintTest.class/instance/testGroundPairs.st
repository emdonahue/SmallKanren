tests
testGroundPairs
	self assert: ((1 cons: 2) presento: (1 cons: 2)) equals: SKConstraint satisfied.
	
	self assert: ((1 cons: 2) presento: 1) equals: SKConstraint satisfied.
	self assert: ((2 cons: 1) presento: 1) equals: SKConstraint satisfied.
	self assert: ((1 cons: 1) presento: 1) equals: SKConstraint satisfied.
	self assert: ((2 cons: 2 cons: 1 cons) presento: 1) equals: SKConstraint satisfied.
	self assert: ((1 cons cons: 2 cons: 2 cons) presento: 1) equals: SKConstraint satisfied.
	
	self assert: ((1 cons: 2) presento: (1 cons: 3)) equals: SKConstraint unsatisfiable.
	self assert: ((1 cons: 2) presento: (3 cons: 2)) equals: SKConstraint unsatisfiable.
	self assert: ((3 cons: (1 cons: 2) cons) presento: (1 cons: 2)) equals: SKConstraint satisfied.
	self assert: ((3 cons: (1 cons: 3) cons) presento: (1 cons: 2)) equals: SKConstraint unsatisfiable.