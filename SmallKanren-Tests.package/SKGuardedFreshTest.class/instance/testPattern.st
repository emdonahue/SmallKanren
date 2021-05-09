tests
testPattern
	| c |
	self assert: (SKGuardedFresh fromPattern: #(1) block: nil) pattern equals: 1 cons.
	self assert: (SKGuardedFresh fromPattern: #(1) block: nil) vars equals: #().
	self assert: (SKGuardedFresh fromPattern: #(1) block: nil) pattern equals: 1 cons.
	self assert: (SKGuardedFresh fromPattern: #((1)) block: nil) pattern equals: 1 cons cons.
	self assert: (SKGuardedFresh fromPattern: #(1 | 2) block: nil) pattern equals: (1 cons: 2).

	c := SKGuardedFresh fromPattern: #(_) block: nil.
	self assert: c pattern isCons.
	self assert: c pattern first isSKVar.
	self assert: c vars size equals: 1.
	self assert: c vars first isSKVar.

	c := SKGuardedFresh fromPattern: #(_ _) block: nil.
	self assert: c pattern isCons.
	self assert: c pattern first isSKVar.
	self assert: c pattern second isSKVar.
	self deny: c pattern first equals: c pattern second.
	
	c := SKGuardedFresh fromPattern: #(_1 _1) block: nil.
	self assert: c pattern isCons.
	self assert: c pattern first isSKVar.
	self assert: c pattern first equals: c pattern second.
	self assert: c vars size equals: 1.
	
c := SKGuardedFresh fromPattern: #(_1 _ _1) block: nil.
	self assert: c vars size equals: 2.
	self assert: c pattern first equals: c vars first.
	self assert: c pattern second equals: c vars second.
	self assert: c pattern third equals: c vars first.