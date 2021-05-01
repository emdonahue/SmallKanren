tests
testCarCdrIn
	self assert: (1 carCdrIn: [ :a :d | SKSucceed singleton ]) isFailure.
	self assert: (Cons empty carCdrIn: [ :a :d | SKSucceed singleton ]) isFailure.
	self assert: (1 cons carCdrIn: [ :a :b | a === 1 & b isEmptyo ]) isSuccess.
	self assert: ((x cons: y) carCdrIn: [ :a :b | a === 1 & (b === 2) ]) runtime  peek => (x cons: y) equals: (1 cons: 2)