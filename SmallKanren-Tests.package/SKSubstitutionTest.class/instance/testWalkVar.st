test-occurs
testWalkVar
	self assert: (s walkVar: y) equals: y.
	self assert: ((s extend: x with: 1) walkVar: x) equals: x.
	self assert: ((s extend: x with: 1) walkVar: y) equals: y.
	self assert: ((s extend: x with: y) walkVar: x) equals: y.