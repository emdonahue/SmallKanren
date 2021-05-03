constructing
testConstructDisjoinedFree
	self assert: ((x =/= w run: (x =/= z run: SKState new)) constraints at: x) 
		equals: x=/=w, (x=/=z).