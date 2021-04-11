tests
testRemoveConstraint
	| x1 x1ySym |
	
	"Running a constraint that doesn't exist should return the state unchanged without copying."
	x1 := s extend: x with: 1.
	self assert: (x1 check: x against: 1) equals: x1.
	
	x1ySym := x1 add: y constraint: (y isNumbero) constraint.
	self assert: (x1ySym check: x against: 1) equals: x1ySym.
	
	self deny: (x1ySym check: y against: 2) equals: x1ySym.