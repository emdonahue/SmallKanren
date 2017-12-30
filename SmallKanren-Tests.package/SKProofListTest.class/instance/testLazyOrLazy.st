tests-or
testLazyOrLazy
	| runner |
	runner := x1 | y2 runner: SKProofList new.
	self assert: runner history equals: Cons empty.
	self assert: runner score equals: 1.
	self assert: runner step history equals: 2 cons.
	self assert: runner step score equals: 1.
	self assert: runner step step history equals: 3 cons.
	self assert: runner step step score equals: 1.
	self assert: runner step step step history equals: (x1 tag cons: 2 cons).
	self assert: runner step step step score equals: 1.
	self assert: runner step step step step history equals: (x1 tag cons: 2 cons).
	self assert: runner step step step step score equals: 0.
	self assert: runner step step step step step history equals: (y2 tag cons: 3 cons).
	self assert: runner step step step step step score equals: 1.
	self assert: runner step step step step step step history equals: (y2 tag cons: 3 cons).
	self assert: runner step step step step step step score equals: 0.