tests
testCdrIn
	self skip.
	self assert: (1 cdrIn: [ :a | SKSucceed singleton ]) isFailure.
	self assert: (Cons empty cdrIn: [ :a | SKSucceed singleton ]) isFailure.
	self assert: (1 cons cdrIn: [ :a | a === Cons empty ]) isSuccess.
	self assert: ((1 cons: x) cdrIn: [ :a | a === 2 ]) runner next peek => x equals: 2.
	self assert: ((1 cons: x) cdrIn: [ :a :b | a === b & (b === 2) ]) runner next peek => x equals: 2.
	self assert: ((x cdrIn: [ :a | a === 1 ]) & (x === (2 cons: y))) isConjunction.
	self assert: ((x cdrIn: [ :a | a === 1 ]) & (x === (2 cons: y))) runner next peek => x equals: (2 cons: 1).
	self assert: ((x cdrIn: [ :a | a === 1 ]) & (x === 2)) runner next atEnd.
	self assert: ((x cdrIn: [ :a :b | a === b & (b === 1) ]) & (x === (2 cons: y))) runner next peek => x equals: (2 cons: 1)