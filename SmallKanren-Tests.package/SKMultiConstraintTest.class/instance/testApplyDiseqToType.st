tests
testApplyDiseqToType
	self assert: ((x =/= 1 run: (x isSymbolo run: SKState new)) constraints at: x) equals: SKSymbolConstraint singleton & (x =/= 1)