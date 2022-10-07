constructing
testConstructDisjoinedFree
	self assert: ((x =/= w run: (x =/= z run: SKSubstitution new)) constraintAt: x) 
		equals: x=/=w, (x=/=z).