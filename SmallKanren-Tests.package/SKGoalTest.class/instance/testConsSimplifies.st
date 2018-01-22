simplifying
testConsSimplifies
	self assert: (1 cons === x) isUnification.
	self assert: (1 cons === Cons empty) isFailure.
	self assert: (1 cons === 1 cons) isSuccess.
	self assert: ((1 cons: 2) === (1 cons: 2)) isSuccess.
	self assert: ((1 cons: 2 cons) === (1 cons: 2 cons)) isSuccess.
	self assert: ((1 cons: 2) === (1 cons: 3)) isFailure.
	self assert: ((1 cons: 2 cons) === (1 cons: 3 cons)) isFailure.
	self assert: ((1 cons: 2 cons) === 1 cons) isFailure.
	self assert: (1 cons === (1 cons: 2 cons)) isFailure.
	self assert: ((1 cons cons: 2) === (3 cons cons: 2)) isFailure.
	self assert: (1 cons === 1) isFailure.
	self assert: (1 cons === x cons) isUnification.
	self assert: ((1 cons: 2) === (1 cons: x)) isUnification.
	self assert: ((x cons: 2) === (1 cons: y)) isConjunction