tests
testLazyTwo
	| xx runner |
	xx := [ x1 ] asGoal.
	runner := xx runner: SKProofList new.
	self assert: runner step history equals: xx tag cons.
	self assert: runner step step history equals: (x1 tag cons: xx tag cons).
	self assert: runner step step step history equals: (x1 tag cons: xx tag cons)