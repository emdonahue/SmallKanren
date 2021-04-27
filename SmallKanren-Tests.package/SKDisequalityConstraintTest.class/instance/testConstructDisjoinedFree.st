constructing
testConstructDisjoinedFree
	| c |
	c := (x =/= w run: (x =/= z run: SKState new)) constraints at: x.
	self assert: c isMultiConstraint.
	self assert: c first left equals: x.
	self assert: c first right equals: w.
	self assert: c rest left equals: x.
	self assert: c rest right equals: z