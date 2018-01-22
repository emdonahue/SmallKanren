tests
testOrLoop
	| ss g zero one two |
	g := nil.
	g := [ :v | v isEmptyo | (v car: 1 cdrIn: [ :t | g value: t ]) ].
	ss := (g value: x) runner.
	zero := ss.
	self assert: zero => x equals: Cons empty.
	one := zero next.
	self assert: one => x equals: 1 cons.
	two := one next.
	self assert: two => x equals: (1 cons: 1 cons)