running
testMultiVar
	self assert: (((((SKCustomConstraint vars: {x. y} block: [ :a :b | z === (a cons: b) ]) run: s runtime: r) unify: x with: 1 runtime: r) unify: y with: 2 runtime: r) reify: z) equals: (1 cons: 2).
	self assert: (((((SKCustomConstraint vars: {x. y} block: [ :a :b | z === (a cons: b) ]) run: s runtime: r) unify: y with: 2 runtime: r) unify: x with: 1 runtime: r) reify: z) equals: (1 cons: 2).