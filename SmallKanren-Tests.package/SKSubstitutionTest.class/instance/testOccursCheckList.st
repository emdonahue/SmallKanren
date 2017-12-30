test-occurs
testOccursCheckList
	self
		assert:
			((Cons empty skOccurs: y in: SKSubstitution new)
				isKindOf: SKSubstitution).
	self
		assert:
			((42 cons skOccurs: y in: SKSubstitution new) isKindOf: SKSubstitution).
	self
		assert: ((x cons skOccurs: y in: SKSubstitution new) isKindOf: SKSubstitution).
	self
		assert: ((x cons skOccurs: x in: SKSubstitution new) isKindOf: SKEmptyStream).
	self
		assert:
			((x cons cons skOccurs: x in: SKSubstitution new)
				isKindOf: SKEmptyStream).
	self
		assert:
			(((42 cons: x) skOccurs: x in: SKSubstitution new)
				isKindOf: SKEmptyStream).
	self
		assert:
			(((42 cons: y) skOccurs: x in: (SKSubstitution new atKey: y put: x))
				isKindOf: SKEmptyStream).
	self
		assert:
			(((42 cons: y)
				skOccurs: x
				in: (SKSubstitution new atKey: y put: x cons))
				isKindOf: SKEmptyStream)