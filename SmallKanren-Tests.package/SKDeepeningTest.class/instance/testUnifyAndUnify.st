tests-and
testUnifyAndUnify
	| runner |
	runner := x === 1 & (y === 2) runner: SKDeepening new.
	self assert: runner step history equals: 0.
	self assert: runner step score equals: 0