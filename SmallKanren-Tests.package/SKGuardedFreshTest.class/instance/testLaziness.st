tests
testLaziness
	self deny: SKState new isLazy.
	self assert: (s addSchedule: (SKGuardedFreshSingle new block: [ :a :d | a === 1 & (d === 2) ])) hasSchedule.