tests-constraint
testUnify
	| runner |
	runner := x === 1 runner: SKDeepening new.
	self assert: runner step history equals: 0.
	self assert: runner step score equals: 0