tests
testOrLoop
	| ss g zero one two |
	g := nil.
	g := [ :v | 
	[ :cdr | 
	{{(v === Cons empty).
	{(v === (1 cons: cdr)).
	(g value: cdr)}}} ] asGoal ].
	ss := (g value: x) runner.
	zero := ss next.
	self assert: zero => x equals: Cons empty.
	one := zero next.
	self assert: one => x equals: 1 cons.
	two := one next.
	self assert: two => x equals: (1 cons: 1 cons)