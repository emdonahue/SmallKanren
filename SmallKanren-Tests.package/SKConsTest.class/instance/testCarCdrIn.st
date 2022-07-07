tests
testCarCdrIn
	self assert: (1 carCdro: [ :a :d | SKSucceed singleton ]) isFailure.
	self assert: (Cons empty carCdro: [ :a :d | SKSucceed singleton ]) isFailure.
	self assert: (1 cons carCdro: [ :a :b | a === 1 & b isEmptyo ]) isSuccess.
	self assert: ((x cons: y) carCdro: [ :a :b | a === 1 & (b === 2) ]) runtime next peek => (x cons: y) equals: (1 cons: 2)