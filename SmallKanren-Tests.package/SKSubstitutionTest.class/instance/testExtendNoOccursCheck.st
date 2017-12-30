tests-extending
testExtendNoOccursCheck
	self assert: ((SKSubstitution new extend: x noOccursCheck: 42) at: x) equals: 42.
	self deny: ((SKSubstitution new extend: x noOccursCheck: 42) at: x) = 51.
	self assert: ((SKSubstitution new extend: x noOccursCheck: x cons) at: x) equals: x cons.
	self assert: ((SKSubstitution new extend: x noOccursCheck: (42 cons: x)) at: x) equals: (42 cons: x).
	self assert: ((SKSubstitution new extend: x noOccursCheck: (42 cons: x cons)) at: x) equals: (42 cons: x cons)