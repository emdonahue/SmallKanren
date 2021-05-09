tests
testEager
	| st |
	st := SKState new add: x constraint: (SKGuardedFresh new block: [ :a :d | a === 1 & (d === 2) ]).
	self assert: (st eager: r) => x equals: (1 cons: 2).