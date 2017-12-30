tests
testUnifyAndUnify
	self assert: (x === 1 & (y === 1) runner: SKProofList new) next history equals: Cons empty