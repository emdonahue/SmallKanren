tests
testLazyThree
	| xx runner xxx |
	xx := [ x1 ] asGoal.
	xxx := [ xx ] asGoal.
	runner := xxx runner: SKProofList new.
	self assert: runner step history equals: xxx tag cons.
	self assert: runner step step history equals: (xx tag cons: xxx tag cons).
	self assert: runner step step step history equals: (x1 tag cons: xx tag cons: xxx tag cons).
	self assert: runner step step step step history equals: (x1 tag cons: xx tag cons: xxx tag cons)