tests
testReification
	self assert: (s reify: empty) equals: empty.
	self assert: (s reify: pair) equals: pair.
	self assert: (s reify: list) equals: list.
	self assert: (s reify: (Cons car: x cdr: 2)) equals: pair.
	self assert: (s reify: (Cons car: 1 cdr: y)) equals: pair.
	self assert: (s reify: (Cons with: x with: y with: z)) equals: list.