constructing
testConstructDisjoined
	| c |
	c := (x =/= 2 run: (x =/= 1 run: SKState new)) constraints at: x.
	self assert: c isDisjoinedDisequality.
	self assert: c first left equals: x.
	self assert: c first right equals: 2.
	self assert: c next left equals: x.
	self assert: c next right equals: 1.
	