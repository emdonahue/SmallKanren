tests
testGroundDomain
	self assert: (1 finiteDomain: #(1 2)) isSuccess.
	self assert: (1 finiteDomain: #(2 3)) isFailure.
	