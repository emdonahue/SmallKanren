tests-and
testDeeplyConjoinedLazies
	| runner x1 |
	x1 := [ x === 1 ] asGoal.
	runner := x1 & x1 & (x1 & x1) & (x1 & x1) & (x1 & x1) runner: SKDeepening new.
	self assert: runner next history equals: 8.
	self assert: runner next score equals: 0