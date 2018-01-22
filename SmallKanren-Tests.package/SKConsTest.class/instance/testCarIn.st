tests
testCarIn
	self skip.
	self assert: (1 carIn: [ :a | SKSucceed singleton ]) isFailure.
	self assert: (Cons empty carIn: [ :a | SKSucceed singleton ]) isFailure.
	self assert: (1 cons carIn: [ :a | a === 1 ]) isSuccess.
	self assert: (x cons carIn: [ :a | a === 1 ]) runner next peek => x equals: 1.
	self assert: (x cons carIn: [ :a :b | b === a & (b === 1) ]) runner next peek => x equals: 1.
	self assert: ((x carIn: [ :a | a === 1 ]) & (x === y cons)) isConjunction.
	self assert: ((x carIn: [ :a | a === 1 ]) & (x === y cons)) runner next peek => x equals: 1 cons.
	self assert: ((x carIn: [ :a :b | b === 1 & (a === b) ]) & (x === y cons)) runner next peek => x equals: 1 cons.
	self assert: ((x carIn: [ :a | a === 1 ]) & (x === 2)) runner next atEnd