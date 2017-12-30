tests-extending
testExtendOccursCheck
	self assert: ((SKSubstitution new extend: x occursCheck: 42) at: x) equals: 42.
	self deny: ((SKSubstitution new extend: x occursCheck: 42) at: x) = 51.
	self assert: (SKSubstitution new extend: x occursCheck: x cons) isNone.
	self assert: (SKSubstitution new extend: x occursCheck: (42 cons: x)) isNone.
	self assert: (SKSubstitution new extend: x occursCheck: (42 cons: x cons)) isNone