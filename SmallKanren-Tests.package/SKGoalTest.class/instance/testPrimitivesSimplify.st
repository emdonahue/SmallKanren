simplifying
testPrimitivesSimplify
	self assert: (42 === x) isUnification.
	self assert: (42 === Cons empty) isFailure.
	self assert: (42 === 42 cons) isFailure.
	self assert: (42 === 42) isSuccess.
	self assert: (42 === 51) isFailure