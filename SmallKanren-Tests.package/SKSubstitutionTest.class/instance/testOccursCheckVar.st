test-occurs
testOccursCheckVar
	self assert: ((x skOccurs: x in: SKSubstitution new) isKindOf: SKFailure).
	self assert: ((x skOccurs: y in: SKSubstitution new) isKindOf: SKSubstitution).
	self assert: ((x skOccurs: y in: (SKSubstitution new extend: x noOccursCheck: y)) isKindOf: SKFailure).