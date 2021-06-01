tests-extending
testExtendOccursCheck
	self assert: ((SKSubstitution empty extend: x occursCheck: 42) at: x) equals: 42.
	self deny: ((SKSubstitution empty extend: x occursCheck: 42) at: x) = 51.
	self assert: (SKSubstitution empty extend: x occursCheck: x cons) isNone.
	self assert: (SKSubstitution empty extend: x occursCheck: (42 cons: x)) isNone.
	self assert: (SKSubstitution empty extend: x occursCheck: (42 cons: x cons)) isNone