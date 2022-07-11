tests - pattern
testPattern
	| c |
	self assert: (SKGuardedMultiMatch externals: #() pattern: #((1)) block: []) pattern equals: {1 cons}.
	self assert: (SKGuardedMultiMatch externals: #() pattern: #((1)) block: []) internals equals: #().
	self assert: (SKGuardedMultiMatch externals: #() pattern: #(((1))) block: []) pattern equals: {1 cons cons}.
	self assert: (SKGuardedMultiMatch externals: #() pattern: #((1 | 2)) block: []) pattern equals: {(1 cons: 2)}.

	c := SKGuardedMultiMatch externals: #() pattern: #(_) block: [:a].
	self assert: c pattern isArray.
	self assert: c pattern first isSKVar.
	self assert: c internals size equals: 1.
	self assert: c internals first isSKVar.

	c := SKGuardedMultiMatch externals: #() pattern: #(_ _) block: [:a :b].
	self assert: c pattern isArray.
	self assert: c pattern first isSKVar.
	self assert: c pattern second isSKVar.
	self deny: c pattern first equals: c pattern second.
	
	c := SKGuardedMultiMatch externals: #() pattern: #(_1 _1) block: [:a].
	self assert: c pattern isArray.
	self assert: c pattern first isSKVar.
	self assert: c pattern first equals: c pattern second.
	self assert: c internals size equals: 1.
	
	c := SKGuardedMultiMatch externals: #() pattern: #(_1 _ _1) block: [:a :b].
	self assert: c internals size equals: 2.
	self assert: c pattern first equals: c internals first.
	self assert: c pattern second equals: c internals second.
	self assert: c pattern third equals: c internals first.