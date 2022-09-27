cdrIn
testCdrInConjoinBothFail
	"Test that two suspended cdrs will suspend on the existing var."

	| g s |
	g := (x car: 1 cdro: [ :d | SKGoal fail ]) & (x car: 1 cdro: [ :d | SKGoal fail ]).
	s := (g run: SKSubstitution new) undelaystep.
	self assert: s isFailure