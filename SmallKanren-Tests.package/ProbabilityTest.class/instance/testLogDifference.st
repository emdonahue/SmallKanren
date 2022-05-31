tests
testLogDifference
	| d |
	d := SKLogSpace new.
	self assert: (d log: 0.5 ln difference: 0.5 ln) equals: 0 ln.
	self assert: (d log: -1000 difference: -1000) equals: 0 ln.
	self assert: (d log: 1 ln difference: 0.6 ln) equals: 0.4 ln.