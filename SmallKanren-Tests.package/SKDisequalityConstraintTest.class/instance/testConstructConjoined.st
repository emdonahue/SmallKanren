constructing
testConstructConjoined
	self assert: (((x cons: y) =/= (1 cons: 2) run: SKSubstitution new) constraintAt: x) 
		equals: x=/=1 & (y=/=2).