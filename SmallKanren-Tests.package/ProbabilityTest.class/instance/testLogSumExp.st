tests
testLogSumExp
	| b |
	b := SKLogSpace new.
	self assert: (b log: 0.5 ln sum: 0.5 ln) equals: 1 ln.
	self assert: (b log: 0 ln sum: 0 ln) equals: 0 ln.
	self assert: (b log: 0.00000000001 ln sum: 0.00000000001 ln) closeTo: 0.00000000002 ln precision: 0.000000000001.
	self assert: (b log: -800 sum: -800) closeTo: -800 precision: 0.1.	