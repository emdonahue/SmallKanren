tests-or
testLazyOr
	| runner x1x2 |
	x1x2 := [ x === 1 | (x === 2) ] asGoal.
	runner := x1x2 runner: SKProofList new.
	self assert: runner history equals: Cons empty.
	self assert: runner score equals: 1.
	self assert: runner step history equals: x1x2 tag cons.
	self assert: runner step score equals: 1.
	self assert: runner step step history equals: ((2 bitXor: x1x2 tag) cons: x1x2 tag cons).
	self assert: runner step step score equals: 1.
	self assert: runner step step step history equals: ((2 bitXor: x1x2 tag) cons: x1x2 tag cons).
	self assert: runner step step step score equals: 0.
	self assert: runner step step step step history equals: ((3 bitXor: x1x2 tag) cons: x1x2 tag cons).
	self assert: runner step step step step score equals: 1.
	self assert: runner step step step step step history equals: ((3 bitXor: x1x2 tag) cons: x1x2 tag cons).
	self assert: runner step step step step step score equals: 0