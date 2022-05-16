tests
testNormalMLE
	self assert: ((1 to: 10) inject: SKNormalEmpirical new into: [ :n :i | n observe: i ]) maximize mean exp closeTo: 5.5 precision: 0.001.
	self assert: ((1 to: 10) inject: SKNormalEmpirical new into: [ :n :i | n observe: i ]) maximize std exp ** 2 closeTo: 9.1666666 precision: 0.01.
	