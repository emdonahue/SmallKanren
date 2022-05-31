tests
testLogSqrt
	| d |
	d := SKLogSpace new.
	self assert: (d logSqrt: 25 ln) exp closeTo: 5 precision: 0.0001.