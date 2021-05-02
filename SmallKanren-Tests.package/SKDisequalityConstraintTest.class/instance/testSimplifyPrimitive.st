tests-simplifying
testSimplifyPrimitive
	self assert: (1 =/= 1) isFailure.
	self assert: (1 =/= 2) isSuccess.
	self assert: (1 =/= x) asConstraint isDisequality