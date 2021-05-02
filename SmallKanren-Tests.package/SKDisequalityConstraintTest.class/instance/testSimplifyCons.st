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
	self assert: ((1 cons: x) =/= (1 cons: 3)) asConstraint isDisequality.
	self assert: ((1 cons: 3) =/= (1 cons: x)) asConstraint isDisequality.
	self assert: ((1 cons: 3) =/= (1 cons: x)) asConstraint right equals: 3.
	self assert: ((1 cons: 3) =/= (x cons: 2)) isSuccess.
	self assert: ((1 cons: 2) =/= (x cons: 2)) asConstraint isDisequality.
	self assert: ((1 cons: 2) =/= (x cons: 2)) asConstraint right equals: 1.
	self assert: ((1 cons: 2) =/= (x cons: y)) asConstraint isDisequality.
	self assert: ((1 cons: 2) =/= (x cons: y)) asConstraint right equals: 2.
	self assert: ((1 cons: 2) =/= (x cons: y)) asConstraint left equals: y.
	self assert: ((1 cons: 2) =/= (x cons: y)) asConstraint rest left equals: x.
	self assert: ((1 cons: 2) =/= (x cons: y)) asConstraint rest right equals: 1.