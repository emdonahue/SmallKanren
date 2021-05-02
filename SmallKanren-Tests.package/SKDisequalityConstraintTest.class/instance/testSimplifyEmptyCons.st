tests-simplifying
testSimplifyEmptyCons
	self assert: (Cons empty =/= Cons empty) isFailure.
	self assert: (Cons empty =/= 1 cons) isSuccess.
	self assert: (Cons empty =/= 1) isSuccess.
	self assert: (Cons empty =/= x) asConstraint isDisequality