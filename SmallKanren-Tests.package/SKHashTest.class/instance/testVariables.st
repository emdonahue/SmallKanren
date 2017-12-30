as yet unclassified
testVariables
	self assert: (a hash: 1) variables equals: Set new.
	self assert: (a hash: x) variables equals: (Set with: x).
	self assert: (a hash: {1. x. 2. y. 3.}) variables equals: (Set with: x with: y).
	self assert: (a hash: (Cons with: 1 with: x with:  2 with: y)) variables equals: (Set with: x with: y).
	