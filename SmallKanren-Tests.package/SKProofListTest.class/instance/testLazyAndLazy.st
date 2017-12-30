tests
testLazyAndLazy
	|  runner |
	runner := x1 & y2 runner: SKProofList new.
	self assert: runner step history equals: x1 tag cons.
	self assert: runner step step history equals: (y2 tag cons: x1 tag cons)