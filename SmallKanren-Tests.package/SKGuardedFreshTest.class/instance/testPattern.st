tests - pattern
testPattern
	| c |
	self assert: (SKGuardedPatternedFresh fromPattern: #(1) block: []) pattern equals: 1 cons.
	self assert: (SKGuardedPatternedFresh fromPattern: #(1) block: []) vars equals: #().
	self assert: (SKGuardedPatternedFresh fromPattern: #(1) block: []) pattern equals: 1 cons.
	self assert: (SKGuardedPatternedFresh fromPattern: #((1)) block: []) pattern equals: 1 cons cons.
	self assert: (SKGuardedPatternedFresh fromPattern: #(1 | 2) block: []) pattern equals: (1 cons: 2).

	c := SKGuardedPatternedFresh fromPattern: #(_) block: [ :a].
	self assert: c pattern isCons.
	self assert: c pattern first isSKVar.
	self assert: c vars size equals: 1.
	self assert: c vars first isSKVar.

	c := SKGuardedPatternedFresh fromPattern: #(_ _) block: [:a :b].
	self assert: c pattern isCons.
	self assert: c pattern first isSKVar.
	self assert: c pattern second isSKVar.
	self deny: c pattern first equals: c pattern second.
	
	c := SKGuardedPatternedFresh fromPattern: #(_1 _1) block: [:a].
	self assert: c pattern isCons.
	self assert: c pattern first isSKVar.
	self assert: c pattern first equals: c pattern second.
	self assert: c vars size equals: 1.
	
c := SKGuardedPatternedFresh fromPattern: #(_1 _ _1) block: [:a :b].
	self assert: c vars size equals: 2.
	self assert: c pattern first equals: c vars first.
	self assert: c pattern second equals: c vars second.
	self assert: c pattern third equals: c vars first.