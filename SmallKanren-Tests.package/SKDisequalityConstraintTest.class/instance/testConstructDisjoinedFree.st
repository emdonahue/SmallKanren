constructing
testConstructDisjoinedFree
	self assert: ((x =/= w run: (x =/= z run: SKSubstitution new)) constraints at: x) 
		equals: x=/=w, (x=/=z).