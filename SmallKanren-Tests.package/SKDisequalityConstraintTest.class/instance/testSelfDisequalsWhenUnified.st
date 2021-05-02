tests
testSelfDisequalsWhenUnified
	self assert: (x=/=x run: (state unify: x with: 1)) equals: failure.