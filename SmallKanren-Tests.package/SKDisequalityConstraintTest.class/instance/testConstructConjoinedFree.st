tests
testConstructConjoinedFree
	self assert: (((x cons: y) =/= (z cons: w) run: SKSubstitution new) constraintAt: x)
		equals: x=/=z & (y=/=w).