tests
testLaziness
	self deny: SKState new isLazy.
	self assert: (SKState new add: x constraint: (SKGuardedFresh new var: x; block: [ :a :d | a === 1 & (d === 2) ])) isLazy.