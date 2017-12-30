tests-and
testUnifyAndLazyAndUnify
	| runner |
	runner := y === 2 & [ x === 1 ] & (z === 3) runner: SKDeepening new.
	self assert: runner step history equals: 1.
	self assert: runner step score equals: 1.
	self assert: runner step step history equals: 1.
	self assert: runner step step score equals: 0