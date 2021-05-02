tests
testCheckAgainstIn
	self assert: ((s add: x constraint: numbero, xn1) unify: x with: 1) equals: failure.
	self assert: ((s add: x constraint: numbero, xn1) unify: x with: #symbol) equals: failure.
	self assert: ((s add: x constraint: numbero, xn1) unify: x with: 2) isState.