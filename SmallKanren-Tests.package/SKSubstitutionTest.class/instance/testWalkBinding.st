test-occurs
testWalkBinding
	self assert: (s walkBinding: y) equals: y.
	self assert: ((s extend: x with: 1) walkBinding: x) equals: (FDSAssociation key: x val: 1).
	self assert: ((s extend: x with: 1) walkBinding: y) equals: y.
	self assert: ((s extend: x with: y) walkBinding: x) equals: y.