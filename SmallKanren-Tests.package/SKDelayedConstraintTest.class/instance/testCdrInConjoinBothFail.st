cdrIn
testCdrInConjoinBothFail
	"Test that two suspended cdrs will suspend on the existing var."

	| g s |
	g := (x car: 1 cdrIn: [ :d | SKGoal fail ]) & (x car: 1 cdrIn: [ :d | SKGoal fail ]).
	s := (g run: SKState new) undelaystep.
	self assert: s isFailure