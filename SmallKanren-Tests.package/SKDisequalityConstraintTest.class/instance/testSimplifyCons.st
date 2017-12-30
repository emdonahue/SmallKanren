tests-simplifying
testSimplifyCons
	self assert: (1 cons =/= 1) isSuccess.
	self assert: (1 cons =/= Cons empty) isSuccess.
	self assert: (1 cons =/= 1 cons) isFailure.
	self assert: ((1 cons: 2) =/= (1 cons: 2)) isFailure.
	self assert: (1 cons =/= 2 cons) isSuccess.
	self assert: ((1 cons: 3) =/= (2 cons: 3)) isSuccess.
	self assert: ((1 cons: 3) =/= (2 cons: 4)) isSuccess.
	self assert: ((1 cons: 2) =/= (1 cons: 3)) isSuccess.
	self assert: (1 cons =/= (1 cons: 3)) isSuccess.
	self assert: ((1 cons: 2) =/= 1 cons) isSuccess.
	self assert: ((1 cons: x) =/= (2 cons: 3)) isSuccess.
	self assert: ((1 cons: x) =/= (1 cons: 3)) isDisequality.
	self assert: ((1 cons: 3) =/= (1 cons: x)) isDisequality.
	self assert: ((1 cons: 3) =/= (1 cons: x)) right equals: 3.
	self assert: ((1 cons: 3) =/= (x cons: 2)) isSuccess.
	self assert: ((1 cons: 2) =/= (x cons: 2)) isDisequality.
	self assert: ((1 cons: 2) =/= (x cons: 2)) right equals: 1.
	self assert: ((1 cons: 2) =/= (x cons: y)) isDisequality.
	self assert: ((1 cons: 2) =/= (x cons: y)) right equals: (1 cons: 2)