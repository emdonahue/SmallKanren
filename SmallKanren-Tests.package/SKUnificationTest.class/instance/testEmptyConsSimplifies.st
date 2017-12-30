simplifying
testEmptyConsSimplifies
	self assert: (Cons empty === x) isUnification.
	self assert: (Cons empty === 42 cons) isFailure.
	self assert: (Cons empty === Cons empty) isSuccess.
	self assert: (Cons empty === 42) isFailure