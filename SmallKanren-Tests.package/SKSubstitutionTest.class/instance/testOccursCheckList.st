test-occurs
testOccursCheckList
	self
		assert:
			((Cons empty skOccurs: y in: SKSubstitution empty)
				isKindOf: SKSubstitution).
	self
		assert:
			((42 cons skOccurs: y in: SKSubstitution empty) isKindOf: SKSubstitution).
	self
		assert: ((x cons skOccurs: y in: SKSubstitution empty) isKindOf: SKSubstitution).
	self
		assert: ((x cons skOccurs: x in: SKSubstitution empty) isKindOf: SKFailure).
	self
		assert:
			((x cons cons skOccurs: x in: SKSubstitution empty)
				isKindOf: SKFailure).
	self
		assert:
			(((42 cons: x) skOccurs: x in: SKSubstitution empty)
				isKindOf: SKFailure).
	self
		assert:
			(((42 cons: y) skOccurs: x in: (SKSubstitution empty atKey: y put: x))
				isKindOf: SKFailure).
	self
		assert:
			(((42 cons: y)
				skOccurs: x
				in: (SKSubstitution empty atKey: y put: x cons))
				isKindOf: SKFailure)