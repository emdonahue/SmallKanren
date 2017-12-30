tests
testKeyIsAbsento
	self assert: (Cons empty keyIsAbsento: 1) isSuccess.
	self assert: ((Cons with: (1 cons: 2)) keyIsAbsento: 1) isFailure.
	self assert: ((Cons with: (1 cons: 2)) keyIsAbsento: 2) isSuccess.
	self assert: ((Cons with: (1 cons: 2) with: (3 cons: 4)) keyIsAbsento: 1) isFailure.
	self assert: ((Cons with: (1 cons: 2) with: (3 cons: 4)) keyIsAbsento: 2) isSuccess.
	self assert: ((Cons with: (1 cons: 2) with: (3 cons: 4)) keyIsAbsento: 3) isFailure.
	self assert: ((Cons with: (1 cons: 2) with: (3 cons: 4)) keyIsAbsento: 4) isSuccess