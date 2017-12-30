tests
testOccurs
	self assert: (empty skOccurs: x in: s substitution) equals: s substitution.
	self assert: (pair skOccurs: x in: s substitution) equals: s substitution.
	self assert: (list skOccurs: x in: s substitution) equals: s substitution.
	self assert: ((Cons with: x) skOccurs: x in: s substitution) isEmptyStream.
	self assert: ((Cons car: 1 cdr: x) skOccurs: x in: s substitution) isEmptyStream.
	self assert: (((Cons with: x) add: 1) skOccurs: x in: s substitution) isEmptyStream