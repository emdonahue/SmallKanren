tests
testApplyTypeToDiseq
	self assert: ((x isSymbolo run: (x =/= 1 run: SKState new)) constraints at: x) equals: SKSymbolConstraint singleton & (x =/= 1)