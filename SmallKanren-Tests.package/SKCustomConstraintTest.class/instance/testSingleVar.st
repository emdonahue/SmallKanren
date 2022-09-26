running
testSingleVar
	self assert: ((((SKCustomConstraint vars: {y. 2} block: [ :a :b | x === (a cons: b) ]) run: s runtime: r) unify: y with: 1) reify: x) equals: (1 cons: 2).