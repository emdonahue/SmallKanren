cdrIn
testCdrInConjoinFail
	"Test that two suspended cdrs will suspend on the existing var."

	| g s |
	g := (x car: 1 cdro: [ :d | d === 2 ]) & (x car: 1 cdro: [ :d | d === 3 ]).
	s := (g run: SKState new) undelaystep.
	self assert: s isFailure