tests
testEager
	"self assert: (x pairo: [ :a :d | a === 1 & (d === 2) ]) & (x == (1 cons: 2)) => x equals: (1 cons: 2)."
	| s |
	s := SKState new add: x constraint: (SKLazyFresh new var: x; block: [ :a :d | a === 1 & (d === 2) ]).
	self assert: (s eager: r) => x equals: (1 cons: 2).