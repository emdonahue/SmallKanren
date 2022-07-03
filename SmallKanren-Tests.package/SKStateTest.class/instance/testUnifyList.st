tests
testUnifyList
	self
		assert:
			(SKState new unify: Cons empty with: Cons empty) substitution
				isEmpty.
	self
		assert: (SKState new unify: 42 cons with: 42 cons) substitution isEmpty.
	self assert: (SKState new unify: 42 cons with: 51 cons) atEnd.
	self
		assert: (SKState new unify: x with: Cons empty) => x
		equals: Cons empty.
	self
		assert: (SKState new unify: x with: 42 cons) => x
		equals: 42 cons.
	self
		assert: (SKState new unify: x cons with: 42 cons) => x
		equals: 42.
	self
		assert: (SKState new unify: 42 cons with: x cons) => x
		equals: 42.
	self
		assert: (SKState new unify: (51 cons: x) with: (51 cons: 42)) => x
		equals: 42.
	self
		assert: (SKState new unify: (51 cons: x) with: (y cons: 42)) => x
		equals: 42.
	self
		assert: (SKState new unify: (51 cons: x) with: (y cons: 42)) => y
		equals: 51.
	self
		assert: (SKState new unify: (51 cons: 42 cons) with: (51 cons: x cons)) => x
		equals: 42