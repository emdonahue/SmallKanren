tests-distributions
testNormalMaximization
	| normal |
	normal := SKNormal new.
	self assert: (normal maximize: 
		(((1 to: 10) inject: (SKSufficientStatistics new: 3) 
			into: [ :n :i | n + (normal sufficientStatistics: i) ]))) 
				mean exp closeTo: 5.5 precision: 0.001.
	self assert: (normal maximize: 
		(((1 to: 10) inject: (SKSufficientStatistics new: 3) 
			into: [ :n :i | n + (normal sufficientStatistics: i) ])))  std exp ** 2 closeTo: 8.25 precision: 0.01.
	"If using the unbiased n-1 denominator"
	"self assert: ((1 to: 10) inject: SKNormalEmpirical new into: [ :n :i | n observe: i ]) maximize std exp ** 2 closeTo: 9.1666666 precision: 0.01."
	