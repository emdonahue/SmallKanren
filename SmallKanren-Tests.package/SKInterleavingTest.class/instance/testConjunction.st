tests
testConjunction
	| runner |
	runner := {(x === 1).
	(y === 2)} asGoal runner: SKInterleaving  new.
	self assert: runner next history equals: 0.
	self assert: runner next score equals: 0