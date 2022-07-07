fresh
testFresh
	| aVar bVar st |
	st := [ :a :b | 
	aVar := a.
	bVar := b.
	a === 1 & (b === 2) ] asGoal runtime next peek.
	self assert: st => aVar equals: 1.
	self assert: st => bVar equals: 2