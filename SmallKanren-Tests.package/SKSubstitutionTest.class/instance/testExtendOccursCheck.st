tests-extending
testExtendOccursCheck
	self assert: ((SKSubstitution empty extend: x occursCheck: 42) at: x) equals: 42.
	self deny: ((SKSubstitution empty extend: x occursCheck: 42) at: x) = 51.
	self assert: (SKSubstitution empty extend: x occursCheck: x cons) atEnd.
	self assert: (SKSubstitution empty extend: x occursCheck: (42 cons: x)) atEnd.
	self assert: (SKSubstitution empty extend: x occursCheck: (42 cons: x cons)) atEnd