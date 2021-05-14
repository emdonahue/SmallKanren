running
testGround
	self assert: (((SKCustomConstraint vars: #(1 2) block: [ :a :b | x === (a cons: b) ]) run: s runtime: r) reify: x) equals: (1 cons: 2).