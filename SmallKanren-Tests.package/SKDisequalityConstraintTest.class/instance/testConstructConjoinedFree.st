tests
testConstructConjoinedFree
	self assert: (((x cons: y) =/= (z cons: w) run: SKSubstitution new) constraints at: x)
		equals: x=/=z & (y=/=w).