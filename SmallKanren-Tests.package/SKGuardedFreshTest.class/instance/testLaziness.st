tests
testLaziness
	self deny: SKState new isLazy.
	self assert: (SKState new add: x constraint: (SKGuardedFreshSingle new block: [ :a :d | a === 1 & (d === 2) ])) isLazy.