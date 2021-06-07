cdrIn
testCdrInConjoinSucceed
	"Test that two suspended cdrs will suspend on the existing var."

	| g s |
	g := (x car: 1 cdro: [ :d | d === 2 ]) & (x car: 1 cdro: [ :d | d === 2 ]).
	s := (g run: SKState new) undelaystep.
	self deny: s isDelayed.
	self assert: (s => x) equals: (1 cons: 2)