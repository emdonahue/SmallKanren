tests
testDelayUndelays
	self
		assert: [ :a :b | (a car: 1 cdrIn: [ :c | c isEmptyo ]) & (b === 2 cons) & (b car: 2 cdrIn: [ :c | c isEmptyo ]) ] asGoal run
		equals: (1 cons cons: 2 cons cons) cons