tests-and
testLazyAndUnify
	| runner |
	runner := [ x === 1 ] asGoal & (y === 2) runner: SKDeepening new.
	self assert: runner step history equals: 1.
	self assert: runner step score equals: 1.
	self assert: runner step step history equals: 1.
	self assert: runner step step score equals: 0