tests-lazy
testLazyOne
	| runner |
	runner := [ x === 1 ] asGoal runner: SKDeepening new.
	self assert: runner history equals: 0.
	self assert: runner score equals: 0.
	self assert: runner step history equals: 1.
	self assert: runner step score equals: 1.
	self assert: runner step step history equals: 1.
	self assert: runner step step score equals: 0