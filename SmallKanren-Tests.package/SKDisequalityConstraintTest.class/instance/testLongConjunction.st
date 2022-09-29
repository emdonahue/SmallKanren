tests
testLongConjunction
	self assert: ({SKVar new. SKVar new. SKVar new. SKVar new. SKVar new.} asCons =/= #(1 2 3 4 5) asCons run: SKSubstitution new) constraints store size equals: 1.