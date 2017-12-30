tests
testUnifyAndLazy
	self assert: (x === 1 & x1 runner: SKProofList new) next history equals: x1 tag cons