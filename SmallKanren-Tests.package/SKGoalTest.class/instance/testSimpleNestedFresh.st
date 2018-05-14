fresh
testSimpleNestedFresh
	| aVar bVar s |
	s := [ :a | 
	[ :b | 
	aVar := a.
	bVar := b.
	a === 1 & (b === 2) ] ] asGoal runner peek.
	self assert: s => aVar equals: 1.
	self assert: s => bVar equals: 2