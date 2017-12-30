tests
testLazyTwoAndLazyTwo
	| runner xx yy |
	xx := [ x1 ] asGoal.
	yy := [ y2 ] asGoal.
	runner := xx & yy runner: SKProofList new.
	self assert: runner step history equals: xx tag cons.
	self assert: runner step step history equals: (x1 tag cons: xx tag cons).
	self assert: runner step step step history equals: (yy tag cons: x1 tag cons: xx tag cons).
	self assert: runner step step step step history equals: (y2 tag cons: yy tag cons: x1 tag cons: xx tag cons).
	self assert: runner step step step step step history equals: (y2 tag cons: yy tag cons: x1 tag cons: xx tag cons) 