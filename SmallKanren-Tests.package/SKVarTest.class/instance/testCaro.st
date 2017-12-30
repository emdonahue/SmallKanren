tests
testCaro
	self assert: (Cons empty caro: 1) isFailure.
	self assert: (42 caro: 1) isFailure.
	self assert: (1 cons caro: x) isUnification.
	self assert: [ (1 cons: 2) caro: x ] asGoal runner runAll first => x equals: 1.
	self
		assert:
			[ :v | 
			{(v caro: x).
			v isEmptyo} ] asGoal runner runAll isEmpty.
	self
		assert:
			[ :v | 
			{(v caro: x).
			(v === (1 cons: 2))} ] asGoal runner runAll first => x
		equals: 1