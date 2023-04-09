test-occurs
testWalkBinding
	self assert: (s walkBinding: y) equals: (SKBinding unbound: y).
	self assert: ((s extend: x with: 1) walkBinding: x) equals: (SKBinding var: x val: 1).
	self assert: ((s extend: x with: 1) walkBinding: y) equals: (SKBinding unbound: y).
	self assert: ((s extend: x with: y) walkBinding: x) equals: (SKBinding unbound: y).