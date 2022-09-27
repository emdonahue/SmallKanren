constructing
testConstructConjoined
	self assert: (((x cons: y) =/= (1 cons: 2) run: SKSubstitution new) constraints at: x) 
		equals: x=/=1 & (y=/=2).