tests-and
testUnifyAndConde
	| runner |
	runner := y === 2
		&
			{(x === 1).
			(x === 2)} asConde runner: SKDeepening new.
	self assert: runner step score equals: 1.
	self assert: runner step history equals: 1.
	self assert: runner step step history equals: 1.
	self assert: runner step step score equals: 0.
	self assert: runner step step step score equals: 1.
	self assert: runner step step step step history equals: 1.
	self assert: runner step step step step score equals: 0