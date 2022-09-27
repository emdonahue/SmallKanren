constructing
testConstructDisjoined
	self assert: ((x =/= 2 run: (x =/= 1 run: SKSubstitution new)) constraints at: x) 
		equals: x=/=2, (x=/=1).