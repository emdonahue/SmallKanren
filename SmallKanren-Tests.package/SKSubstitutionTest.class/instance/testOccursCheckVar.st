test-occurs
testOccursCheckVar
	self assert: ((x skOccurs: x in: SKSubstitution empty) isKindOf: SKFailure).
	self assert: ((x skOccurs: y in: SKSubstitution empty) isKindOf: SKSubstitution).
	self assert: ((x skOccurs: y in: (SKSubstitution empty extend: x noOccursCheck: y)) isKindOf: SKFailure).