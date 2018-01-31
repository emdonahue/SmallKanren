fresh
testNestedFresh
	| aVar bVar s |
	s := [ :a | 
	aVar := a.
	a === 1
		& [ :b | 
			bVar := b.
			b === 2 ] ] asGoal runner  peek.
	self assert: s => aVar equals: 1.
	self assert: s => bVar equals: 2